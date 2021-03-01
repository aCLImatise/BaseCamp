version 1.0

task ReduceSr {
  input {
    Int? maximum_search_depth
    File? output_file_name
    String cmdline_parse
    String largest_kuni_tig
  }
  command <<<
    reduce_sr \
      ~{cmdline_parse} \
      ~{largest_kuni_tig} \
      ~{if defined(maximum_search_depth) then ("--maximum-search-depth " +  '"' + maximum_search_depth + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    maximum_search_depth: "Check at most this many possible containing SuperReads (100)"
    output_file_name: "Output file name (reduce.tmp)"
    cmdline_parse: ""
    largest_kuni_tig: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}