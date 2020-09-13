version 1.0

task QuasitoolsDnds {
  input {
    File? var_output
    String csv
    String reference
    String offset
  }
  command <<<
    quasitools dnds \
      ~{csv} \
      ~{reference} \
      ~{offset} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    var_output: ""
    csv: ""
    reference: ""
    offset: ""
  }
  output {
    File out_stdout = stdout()
  }
}