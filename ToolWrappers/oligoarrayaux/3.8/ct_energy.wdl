version 1.0

task Ctenergy {
  input {
    Int? temperature
    String? suffix
    Boolean? sodium
    Boolean? magnesium
    File? var_file
  }
  command <<<
    ct_energy \
      ~{var_file} \
      ~{if defined(temperature) then ("--temperature " +  '"' + temperature + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if (sodium) then "--sodium" else ""} \
      ~{if (magnesium) then "--magnesium" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    temperature: "(defaults to 37)"
    suffix: "(overrides temperature)"
    sodium: "=<[Na+] in M> (defaults to 1)"
    magnesium: "=<[Mg++] in M> (defaults to 0)"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}