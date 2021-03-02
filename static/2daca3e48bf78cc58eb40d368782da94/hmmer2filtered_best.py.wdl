version 1.0

task Hmmer2filteredBestpy {
  input {
    String parse
    String hmmer
    String var_output
    File var_file
    String and
    String generated
    String filtered
    String best
  }
  command <<<
    hmmer2filtered_best_py \
      ~{parse} \
      ~{hmmer} \
      ~{var_output} \
      ~{var_file} \
      ~{and} \
      ~{generated} \
      ~{filtered} \
      ~{best}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    parse: ""
    hmmer: ""
    var_output: ""
    var_file: ""
    and: ""
    generated: ""
    filtered: ""
    best: ""
  }
  output {
    File out_stdout = stdout()
  }
}