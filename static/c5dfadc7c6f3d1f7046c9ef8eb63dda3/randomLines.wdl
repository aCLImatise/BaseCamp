version 1.0

task RandomLines {
  input {
    String? seed
    Boolean? de_comment
    String in_file
    String count
  }
  command <<<
    randomLines \
      ~{in_file} \
      ~{count} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if (de_comment) then "-decomment" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seed: "- Set seed used for randomizing, useful for debugging."
    de_comment: "- remove blank lines and those starting with"
    in_file: ""
    count: ""
  }
  output {
    File out_stdout = stdout()
  }
}