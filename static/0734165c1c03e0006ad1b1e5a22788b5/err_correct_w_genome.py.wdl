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
    File var_file
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
      ~{var_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    generate: ""
    sequences: ""
    using: ""
    genome: ""
    bases: ""
    and: ""
    sam: ""
    alignment: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}