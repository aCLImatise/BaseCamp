version 1.0

task PyfastxIndex {
  input {
    Boolean? full
    String fast_x
  }
  command <<<
    pyfastx index \
      ~{fast_x} \
      ~{if (full) then "--full" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    full: "build full index, base composition will be calculated"
    fast_x: "fasta or fastq file, gzip support"
  }
  output {
    File out_stdout = stdout()
  }
}