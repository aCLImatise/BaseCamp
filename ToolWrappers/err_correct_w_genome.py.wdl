version 1.0

task ErrCorrectWGenomepy {
  input {
    String generate
    String sequences
    String using
    String genome
    String bases
    String and
    String sam
    String alignment
    File file
  }
  command <<<
    err_correct_w_genome_py \
      ~{generate} \
      ~{sequences} \
      ~{using} \
      ~{genome} \
      ~{bases} \
      ~{and} \
      ~{sam} \
      ~{alignment} \
      ~{file}
  >>>
  parameter_meta {
    generate: ""
    sequences: ""
    using: ""
    genome: ""
    bases: ""
    and: ""
    sam: ""
    alignment: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}