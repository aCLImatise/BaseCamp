version 1.0

task Qvalue {
  input {
    File? good_score
    Int? header
    Int? column
    Int? append
    Int? verbosity
    String p_values
  }
  command <<<
    qvalue \
      ~{p_values} \
      ~{if defined(good_score) then ("--good-score " +  '"' + good_score + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if defined(append) then ("--append " +  '"' + append + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    good_score: "|low"
    header: "(default=0)"
    column: "(default=1)"
    append: "(default from clock)"
    verbosity: "|2|3|4 (default = 2)"
    p_values: ""
  }
  output {
    File out_stdout = stdout()
  }
}