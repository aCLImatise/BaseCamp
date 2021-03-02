version 1.0

task Formcon {
  input {
    String file_of_reads
    String min_distance
    String max_distance
  }
  command <<<
    formcon \
      ~{file_of_reads} \
      ~{min_distance} \
      ~{max_distance}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_of_reads: "file of DNA reads in FASTA format"
    min_distance: "minimum length in bp of subclones"
    max_distance: "maximum length in bp of subclones"
  }
  output {
    File out_stdout = stdout()
  }
}