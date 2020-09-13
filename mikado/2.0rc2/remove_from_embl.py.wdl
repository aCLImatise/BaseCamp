version 1.0

task RemoveFromEmblpy {
  input {
    String script
    String to
    String remove
    String sequences
    String specific
    String of
    String a
    String given
    String organism
    String from
    String swissprot
    File file_dot
  }
  command <<<
    remove_from_embl_py \
      ~{script} \
      ~{to} \
      ~{remove} \
      ~{sequences} \
      ~{specific} \
      ~{of} \
      ~{a} \
      ~{given} \
      ~{organism} \
      ~{from} \
      ~{swissprot} \
      ~{file_dot}
  >>>
  parameter_meta {
    script: ""
    to: ""
    remove: ""
    sequences: ""
    specific: ""
    of: ""
    a: ""
    given: ""
    organism: ""
    from: ""
    swissprot: ""
    file_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}