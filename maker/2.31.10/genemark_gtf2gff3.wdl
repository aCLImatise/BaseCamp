version 1.0

task GenemarkGtf2gff3 {
  input {
    File filename
  }
  command <<<
    genemark_gtf2gff3 \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
}