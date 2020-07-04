version 1.0

task Str8rzr {
  input {
    Boolean? reverse_complement_
    Boolean? verbose_prints_information
    Boolean? include_anchors_includes
    Int? default_maximum_anchor
    Int? default_maximum_motif
    String? required_config_file
    Int? number_processorscpus_used
    String? filters_type_eg
    File? writes_output_filename
    Int? min_match_causes
  }
  command <<<
    str8rzr \
      ~{true="-n" false="" reverse_complement_} \
      ~{true="-v" false="" verbose_prints_information} \
      ~{true="-i" false="" include_anchors_includes} \
      ~{if defined(default_maximum_anchor) then ("-a " +  '"' + default_maximum_anchor + '"') else ""} \
      ~{if defined(default_maximum_motif) then ("-m " +  '"' + default_maximum_motif + '"') else ""} \
      ~{if defined(required_config_file) then ("-c " +  '"' + required_config_file + '"') else ""} \
      ~{if defined(number_processorscpus_used) then ("-p " +  '"' + number_processorscpus_used + '"') else ""} \
      ~{if defined(filters_type_eg) then ("-t " +  '"' + filters_type_eg + '"') else ""} \
      ~{if defined(writes_output_filename) then ("-o " +  '"' + writes_output_filename + '"') else ""} \
      ~{if defined(min_match_causes) then ("-f " +  '"' + min_match_causes + '"') else ""}
  >>>
  parameter_meta {
    reverse_complement_: "(no reverse complement-- this turns off the default behavior of reverse-complementing matches on the negative strand)"
    verbose_prints_information: "(verbose ; prints out additional diagnostic information)"
    include_anchors_includes: "(Include anchors ; includes the Anchor sequences in the reported haplotypes)"
    default_maximum_anchor: "(default 1; the maximum Hamming distance used with anchor search. can only be 0, 1 or 2)"
    default_maximum_motif: "(default 0; the maximum Hamming distance used with motif search. can only be 0 or 1)"
    required_config_file: "(REQUIRED; the locus config file used to define the STRs)"
    number_processorscpus_used: "(The number of processors/cpus used)"
    filters_type_eg: "(This filters on Type, e.g. AUTOSOMES; ie, it restricts the output to STRs that have the same type as specified in column 2 of the config file)"
    writes_output_filename: "(This writes the output to filename, as opposed to standard out)"
    min_match_causes: "(Min match; this causes haplotypes with less than f occurences to be omitted from the final output file"
  }
}