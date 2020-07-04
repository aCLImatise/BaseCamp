version 1.0

task SplitFasta.py {
  input {
    String script
    String to
    String split
    String fast_a
    String sequences
    String in
    String a
    String fixed
    String number
    String of
    String multiple
    File files_dot
  }
  command <<<
    split_fasta.py \
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
}