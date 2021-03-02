version 1.0

task ChainSort {
  input {
    String? target
    String? query
    File? index
    String in_file
  }
  command <<<
    chainSort \
      ~{in_file} \
      ~{if defined(target) then ("-target " +  '"' + target + '"') else ""} \
      ~{if defined(query) then ("-query " +  '"' + query + '"') else ""} \
      ~{if defined(index) then ("-index " +  '"' + index + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target: "on target start rather than score"
    query: "on query start rather than score"
    index: "build simple two column index file\\n<out file position>  <value>\\nwhere <value> is score, target, or query\\ndepending on the sort.\\n"
    in_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_index = "${in_index}"
  }
}