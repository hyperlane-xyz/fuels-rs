contract;

use std::storage::{get, store};

abi MyContract {
    #[storage(write)]
    fn store(input: u64);
    #[storage(read)]
    fn read(input: u64) -> u64;
}

const COUNTER_KEY = 0x0000000000000000000000000000000000000000000000000000000000000000;

impl MyContract for Contract {
    #[storage(write)]
    fn store(input: u64) {
        store(COUNTER_KEY, input);
    }

    #[storage(read)]
    fn read(input: u64) -> u64 {
        let v = get::<u64>(COUNTER_KEY).unwrap_or(0);
        v
    }
}
