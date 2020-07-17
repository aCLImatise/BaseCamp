version 1.0

task ChainSort {
  input {
    String? target
    String? query
    String? index
    String in_file
    String outfile
  }
  command <<<
    chainSort \
      ~{in_file} \
      ~{outfile} \
      ~{if defined(target) then ("-target " +  '"' + target + '"') else ""} \
      ~{if defined(query) then ("-query " +  '"' + query + '"') else ""} \
      ~{if defined(index) then ("-index " +  '"' + index + '"') else ""}
  >>>
  parameter_meta {
    target: "on target start rather than score"
    query: "on query start rather than score"
    index: "build simple two column index file <out file position>  <value> where <value> is score, target, or query  depending on the sort."
    in_file: ""
    outfile: ""
  }
}