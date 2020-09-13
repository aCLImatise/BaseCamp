version 1.0

task Splitpairedreadspy {
  input {
    Boolean? info
    Directory? output_dir
    File? output_orphaned
    File? output_first
    File? output_second
    File? force
    Boolean? gzip
    Boolean? bzip
    String in_file
  }
  command <<<
    split_paired_reads_py \
      ~{in_file} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_orphaned) then ("--output-orphaned " +  '"' + output_orphaned + '"') else ""} \
      ~{if defined(output_first) then ("--output-first " +  '"' + output_first + '"') else ""} \
      ~{if defined(output_second) then ("--output-second " +  '"' + output_second + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip) then "--bzip" else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    output_dir: "Output split reads to specified directory. Creates\\ndirectory if necessary (default: )"
    output_orphaned: "Allow \\\"orphaned\\\" reads and extract them to this file\\n(default: None)"
    output_first: "Output \\\"left\\\" reads to this file (default: None)"
    output_second: "Output \\\"right\\\" reads to this file (default: None)"
    force: "Overwrite output file if it exists (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    in_file: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    File out_output_first = "${in_output_first}"
    File out_output_second = "${in_output_second}"
    File out_force = "${in_force}"
  }
}