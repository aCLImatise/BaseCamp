version 1.0

task BpSearch2tribepl {
  input {
    File? _output_filename
    String? search_result_format
    Float? weight
  }
  command <<<
    bp_search2tribe_pl \
      ~{if defined(_output_filename) then ("-o " +  '"' + _output_filename + '"') else ""} \
      ~{if defined(search_result_format) then ("-f " +  '"' + search_result_format + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""}
  >>>
  parameter_meta {
    _output_filename: "- the output filename [default STDOUT]"
    search_result_format: "- search result format (blast, fasta)\\n(ssearch is fasta format). default is blast."
    weight: "- Change the default weight for E(0.0) hits\\nto VALUE (default=200 (i.e. 1e-200) )"
  }
  output {
    File out_stdout = stdout()
    File out__output_filename = "${in__output_filename}"
  }
}