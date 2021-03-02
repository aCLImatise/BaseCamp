version 1.0

task Generatestatetrees {
  input {
    File? input_state_tree
    File? ss
    Int? max_cn
    Int? maxx_y
  }
  command <<<
    generatestatetrees \
      ~{if defined(input_state_tree) then ("-S " +  '"' + input_state_tree + '"') else ""} \
      ~{if defined(ss) then ("-SS " +  '"' + ss + '"') else ""} \
      ~{if defined(max_cn) then ("-maxCN " +  '"' + max_cn + '"') else ""} \
      ~{if defined(maxx_y) then ("-maxXY " +  '"' + maxx_y + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/decifer:0.0.2--py27ha58320b_0"
  }
  parameter_meta {
    input_state_tree: "Input state tree file"
    ss: "Output state tree file"
    max_cn: "Maximum number of copy number events (default: 2)"
    maxx_y: "Maximum number of maternal/paternal copies (default: 2)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_ss = "${in_ss}"
  }
}