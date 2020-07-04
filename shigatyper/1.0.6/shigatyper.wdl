version 1.0

task Shigatyper {
  input {
    String? n
    Boolean? verbose
    String read_one
    String read_two
  }
  command <<<
    shigatyper \
      ~{read_one} \
      ~{read_two} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    n: ""
    verbose: ""
    read_one: ""
    read_two: ""
  }
}