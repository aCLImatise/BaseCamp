version 1.0

task GfPcr {
  input {
    String? name
    String host
    String port
    String seq_dir
    String f_primer
    String r_primer
    String var_output
  }
  command <<<
    gfPcr \
      ~{host} \
      ~{port} \
      ~{seq_dir} \
      ~{f_primer} \
      ~{r_primer} \
      ~{var_output} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    name: "- Name to use in bed output."
    host: ""
    port: ""
    seq_dir: ""
    f_primer: ""
    r_primer: ""
    var_output: ""
  }
}