version 1.0

task BioformatsFlanknfilter {
  input {
    String? type
    Int? length
    Boolean? strict
    Boolean? v
    String input_file
    String fast_a_file
    String output_file
  }
  command <<<
    bioformats flanknfilter \
      ~{input_file} \
      ~{fast_a_file} \
      ~{output_file} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{true="--strict" false="" strict} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    type: "the input file type (default: bed)"
    length: "the flanking region length (default: 100)"
    strict: "require flanks to have exactly the specified length (it may be shorter if a feature is located near a sequence start or end) (default: False)"
    v: ""
    input_file: "an input file of features to be filtered"
    fast_a_file: "a FASTA file of sequences the features are related to"
    output_file: "an output file of filtered features"
  }
}