version 1.0

task BedparsePUTR {
  input {
    String bed_file
  }
  command <<<
    bedparse _pUTR \
      ~{bed_file}
  >>>
  parameter_meta {
    bed_file: "Path to the BED file."
  }
  output {
    File out_stdout = stdout()
  }
}