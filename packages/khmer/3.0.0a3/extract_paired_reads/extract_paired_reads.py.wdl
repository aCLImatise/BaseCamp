version 1.0

task Extractpairedreadspy {
  input {
    Boolean? info
    Directory? output_dir
    File? output_paired
    File? output_single
    File? force
    Boolean? gzip
    Boolean? bzip
    String in_file
  }
  command <<<
    extract_paired_reads_py \
      ~{in_file} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_paired) then ("--output-paired " +  '"' + output_paired + '"') else ""} \
      ~{if defined(output_single) then ("--output-single " +  '"' + output_single + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip) then "--bzip" else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    output_dir: "Output split reads to specified directory. Creates\\ndirectory if necessary (default: )"
    output_paired: "Output paired reads to this file (default: None)"
    output_single: "Output orphaned reads to this file (default: None)"
    force: "Overwrite output file if it exists (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    in_file: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_output_paired = "${in_output_paired}"
    File out_output_single = "${in_output_single}"
    File out_force = "${in_force}"
  }
}