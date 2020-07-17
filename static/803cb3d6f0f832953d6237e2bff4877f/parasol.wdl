version 1.0

task Parasol {
  input {
    String? host
  }
  command <<<
    parasol \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""}
  >>>
  parameter_meta {
    host: "- connect to a paraHub process on a remote host instead localhost."
  }
}