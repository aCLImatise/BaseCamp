version 1.0

task AdamSubmit {
  input {
    String? eE
    String? d8bD8b
  }
  command <<<
    adam-submit \
      ~{eE} \
      ~{d8bD8b}
  >>>
}