version 1.0

task SplitFastapy {
  input {
    String script
    String to
    String split
    String fast_a
    String sequences
    String in
    String a
    String fixed
    Int number
    String of
    String multiple
    String files_dot
  }
  command <<<
    split_fasta_py \
      ~{script} \
      ~{to} \
      ~{split} \
      ~{fast_a} \
      ~{sequences} \
      ~{in} \
      ~{a} \
      ~{fixed} \
      ~{number} \
      ~{of} \
      ~{multiple} \
      ~{files_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0"
  }
  parameter_meta {
    script: ""
    to: ""
    split: ""
    fast_a: ""
    sequences: ""
    in: ""
    a: ""
    fixed: ""
    number: ""
    of: ""
    multiple: ""
    files_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}