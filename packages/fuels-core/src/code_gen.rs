//! This module implements everything related to code generation/expansion
//! from a FuelVM ABI.
pub mod abigen;
pub mod bindings;
pub mod custom_types;
pub mod docs_gen;
pub mod function_selector;
pub mod functions_gen;
mod resolved_type;

pub use abigen::{extract_and_parse_logs, extract_log_ids_and_data};
