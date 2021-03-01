version 1.0

task Velveth {
  input {
    Boolean? strand_specific
    Directory directory
    String hash_length
    File filename
  }
  command <<<
    velveth \
      ~{directory} \
      ~{hash_length} \
      ~{filename} \
      ~{if (strand_specific) then "-strand_specific" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    strand_specific: ": for strand specific transcriptome sequencing data (default: off)"
    directory: ": directory name for output files"
    hash_length: ": odd integer (if even, it will be decremented) <= 64 (if above, will be reduced)"
    filename: ": path to sequence file or - for standard input"
  }
  output {
    File out_stdout = stdout()
  }
}