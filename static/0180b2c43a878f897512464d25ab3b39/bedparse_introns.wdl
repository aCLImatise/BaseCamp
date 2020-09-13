version 1.0

task BedparseIntrons {
  input {
    String bed_file
  }
  command <<<
    bedparse introns \
      ~{bed_file}
  >>>
  parameter_meta {
    bed_file: "Path to the BED file."
  }
  output {
    File out_stdout = stdout()
  }
}