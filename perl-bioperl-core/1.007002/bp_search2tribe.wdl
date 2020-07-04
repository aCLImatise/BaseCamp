version 1.0

task BpSearch2tribe.pl {
  input {
    File? _output_filename
    String? search_result_format
    String? weight
    Boolean? w_slash_weight
  }
  command <<<
    bp_search2tribe.pl \
      ~{if defined(_output_filename) then ("-o " +  '"' + _output_filename + '"') else ""} \
      ~{if defined(search_result_format) then ("-f " +  '"' + search_result_format + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{true="-w/--weight" false="" w_slash_weight}
  >>>
  parameter_meta {
    _output_filename: "- the output filename [default STDOUT]"
    search_result_format: "- search result format (blast, fasta) (ssearch is fasta format). default is blast."
    weight: "- Change the default weight for E(0.0) hits to VALUE (default=200 (i.e. 1e-200) )"
    w_slash_weight: ""
  }
}