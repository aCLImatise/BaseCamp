version 1.0

task H5perfSerial {
  input {
    String? which_apis_test
    String? selects_chunked_storage
    Int? dimensions_sizes_dataset
    Int? number_iterations_perform
    Int? dimension_access_order
    Boolean? selects_extendable_dimensions
    File? selects_file_driver
    Boolean? perform_write_tests
    Int? dimensions_sizes_transfer
    String options
    String vfd
    Int hdf_five_no_cleanup
    Int hdf_five_prefix
  }
  command <<<
    h5perf_serial \
      ~{options} \
      ~{vfd} \
      ~{hdf_five_no_cleanup} \
      ~{hdf_five_prefix} \
      ~{if defined(which_apis_test) then ("-A " +  '"' + which_apis_test + '"') else ""} \
      ~{if defined(selects_chunked_storage) then ("-c " +  '"' + selects_chunked_storage + '"') else ""} \
      ~{if defined(dimensions_sizes_dataset) then ("-e " +  '"' + dimensions_sizes_dataset + '"') else ""} \
      ~{if defined(number_iterations_perform) then ("-i " +  '"' + number_iterations_perform + '"') else ""} \
      ~{if defined(dimension_access_order) then ("-r " +  '"' + dimension_access_order + '"') else ""} \
      ~{if (selects_extendable_dimensions) then "-t" else ""} \
      ~{if defined(selects_file_driver) then ("-v " +  '"' + selects_file_driver + '"') else ""} \
      ~{if (perform_write_tests) then "-w" else ""} \
      ~{if defined(dimensions_sizes_transfer) then ("-x " +  '"' + dimensions_sizes_transfer + '"') else ""}
  >>>
  parameter_meta {
    which_apis_test: "Which APIs to test\\n[default: all of them]"
    selects_chunked_storage: "Selects chunked storage and defines chunks dimensions\\nand sizes\\n[default: Off]"
    dimensions_sizes_dataset: "Dimensions and sizes of dataset\\n[default: 100,200]"
    number_iterations_perform: "Number of iterations to perform\\n[default: 1]"
    dimension_access_order: "Dimension access order (see below for description)\\n[default: 1,2]"
    selects_extendable_dimensions: "Selects extendable dimensions for HDF5 dataset\\n[default: Off]"
    selects_file_driver: "Selects file driver for HDF5 access\\n[default: sec2]"
    perform_write_tests: "Perform write tests, not the read tests\\n[default: Off]"
    dimensions_sizes_transfer: "Dimensions and sizes of the transfer buffer\\n[default: 10,20]"
    options: "-h                Print an usage message and exit"
    vfd: "- is an HDF5 file driver specifier. Valid values are:\\nsec2, stdio, core, split, multi, family, direct"
    hdf_five_no_cleanup: "Do not remove data files if set [default remove]"
    hdf_five_prefix: "Data file prefix"
  }
  output {
    File out_stdout = stdout()
  }
}