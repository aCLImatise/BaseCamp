version 1.0

task Qvalue {
  input {
    File? null
    String p_values
  }
  command <<<
    qvalue \
      ~{p_values} \
      ~{if defined(null) then ("--null " +  '"' + null + '"') else ""}
  >>>
  parameter_meta {
    null: "--good-score high|low\\n--pi-zero\\n--pi-zero-file <file>\\n--fdr\\n--bootstraps <int> (default=1000)\\n--header <int> (default=0)\\n--column <int> (default=1)\\n--append\\n--seed <int> (default from clock)\\n--verbosity 1|2|3|4 (default = 2)\\n"
    p_values: ""
  }
  output {
    File out_stdout = stdout()
  }
}