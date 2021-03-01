version 1.0

task Extractpartitionspy {
  input {
    Boolean? info
    Int? max_size
    Int? min_partition_size
    Boolean? no_output_groups
    Boolean? output_unassigned
    File? force
    Boolean? gzip
    Boolean? bzip
    String output_filename_prefix
  }
  command <<<
    extract_partitions_py \
      ~{output_filename_prefix} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if defined(min_partition_size) then ("--min-partition-size " +  '"' + min_partition_size + '"') else ""} \
      ~{if (no_output_groups) then "--no-output-groups" else ""} \
      ~{if (output_unassigned) then "--output-unassigned" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip) then "--bzip" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info: "print citation information"
    max_size: "Max group size (n sequences) (default: 1000000)"
    min_partition_size: "Minimum partition size worth keeping (default: 5)"
    no_output_groups: "Do not actually output groups files. (default: True)"
    output_unassigned: "Output unassigned sequences, too (default: False)"
    force: "Overwrite output file if it exists (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    output_filename_prefix: "input_partition_filename"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}