version 1.0

task ErrCorrectWGenome.py {
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
    err_correct_w_genome.py \
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
}