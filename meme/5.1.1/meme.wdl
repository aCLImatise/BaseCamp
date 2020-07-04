version 1.0

task Meme {
  input {
    String dataset
    String? optional
    String? arguments
  }
  command <<<
    meme \
      ~{dataset} \
      ~{optional} \
      ~{arguments}
  >>>
  parameter_meta {
    dataset: ""
    optional: ""
    arguments: ""
  }
}