version 1.0

task MessageExtract {
  input {
    String? m
    String? n_codes
  }
  command <<<
    message-extract \
      ~{n_codes} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    n_codes: ""
  }
}