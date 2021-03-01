version 1.0

task Metaxa2Si {
  input {
    String? input_taxonomy_file
    File? _output_file
    String? taxonomic_level_performing
    String? percent_identity_cutoff
    String? list_all
    String? multiple
    String? low_identity
    Boolean? help
    Boolean? bugs
    Boolean? license
  }
  command <<<
    metaxa2_si \
      ~{if defined(input_taxonomy_file) then ("-i " +  '"' + input_taxonomy_file + '"') else ""} \
      ~{if defined(_output_file) then ("-o " +  '"' + _output_file + '"') else ""} \
      ~{if defined(taxonomic_level_performing) then ("-l " +  '"' + taxonomic_level_performing + '"') else ""} \
      ~{if defined(percent_identity_cutoff) then ("-c " +  '"' + percent_identity_cutoff + '"') else ""} \
      ~{if defined(list_all) then ("--list_all " +  '"' + list_all + '"') else ""} \
      ~{if defined(multiple) then ("--multiple " +  '"' + multiple + '"') else ""} \
      ~{if defined(low_identity) then ("--low_identity " +  '"' + low_identity + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (bugs) then "--bugs" else ""} \
      ~{if (license) then "--license" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_taxonomy_file: ": Input taxonomy file from Metaxa2"
    _output_file: ": Output file"
    taxonomic_level_performing: ": Taxonomic level for performing inference (1 = domain -> 7 = species), default = 7 (species level)"
    percent_identity_cutoff: ": Percent identity cutoff for allowing inference, default = 97"
    list_all: ": Lists all possibilities for sequence entries with multiple possible inferences, off (F) by default"
    multiple: ": Decides how to handle entries with multiple possible inferences, default = keep\\n('assign' will randomly assign the entry to a possible taxa)"
    low_identity: ": Decides how to handle entries with sequence identity below cutoff, default = keep"
    help: ": displays this help message"
    bugs: ": displays the bug fixes and known bugs in this version of Metaxa"
    license: ": displays licensing information"
  }
  output {
    File out_stdout = stdout()
    File out__output_file = "${in__output_file}"
  }
}