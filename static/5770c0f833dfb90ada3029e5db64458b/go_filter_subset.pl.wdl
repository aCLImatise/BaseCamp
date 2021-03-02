version 1.0

task Gofiltersubsetpl {
  input {
    Int? id
    File? subset
    String? namespace
    String? filter_code
    Boolean? partial
    Boolean? use_cache
  }
  command <<<
    go_filter_subset_pl \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(subset) then ("-subset " +  '"' + subset + '"') else ""} \
      ~{if defined(namespace) then ("-namespace " +  '"' + namespace + '"') else ""} \
      ~{if defined(filter_code) then ("-filter_code " +  '"' + filter_code + '"') else ""} \
      ~{if (partial) then "-partial" else ""} \
      ~{if (use_cache) then "-use_cache" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id: "ID to use as leaf node in subgraph. All ancestors of this ID are\\nincluded in the exported graph (unless -partial is set)\\nMultiple IDs can be passed\\n-id ID1 -id ID2 -id ID3 ....etc"
    subset: "Extracts a named subset from the ontology file. (only works with obo\\nformat files). For example, a specific GO slim\\nONLY terms belonging to the subset are exported - the -partial\\noption is automatically set"
    namespace: "only terms in this namespace"
    filter_code: "advanced option\\nA subroutine with which the GO::Model::Term object is tested for\\ninclusion in the subgraph (all ancestors are automatically included)\\nYou should have an understanding of the go-perl object model before\\nusing this option\\nExample:\\ngo-filter-subset -filter_code 'sub {shift->namespace eq 'molecular_function'}' go.obo\\n(the same things can be achieved with the -namespace option)"
    partial: "If this is set, then only terms that match the user query are\\nincluded. Parentage is set to the next recursive parent node in the\\nfilter\\nFor example, with the -subset option: if X and Y belong to the\\nsubset, and Z does not, and X is_a Z is_a Y, then the exported graph\\nwithh have X is_a Y"
    use_cache: "If this switch is specified, then caching mode is turned on.\\nWith caching mode, the first time you parse a file, then an\\nadditional file will be exported in a special format that is fast to\\nparse. This file will have the same filename as the original file,\\nexcept it will have the \\\".cache\\\" suffix.\\nThe next time you parse the file, this program will automatically\\ncheck for the existence of the \\\".cache\\\" file. If it exists, and is\\nmore recent than the file you specified, this is parsed instead. If\\nit does not exist, it is rebuilt."
  }
  output {
    File out_stdout = stdout()
  }
}