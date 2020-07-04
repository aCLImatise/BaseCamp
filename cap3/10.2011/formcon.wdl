version 1.0

task Formcon {
  input {
    File file_of_reads
    Int min_distance
    Int max_distance
  }
  command <<<
    formcon \
      ~{file_of_reads} \
      ~{min_distance} \
      ~{max_distance}
  >>>
  parameter_meta {
    file_of_reads: "file of DNA reads in FASTA format"
    min_distance: "minimum length in bp of subclones"
    max_distance: "maximum length in bp of subclones"
  }
}