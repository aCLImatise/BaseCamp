version 1.0

task Lexmapr {
  input {
    Boolean? _output_file
    Boolean? full
    String? config
    Boolean? bucket
    Boolean? no_cache
    String? profile
    Boolean? v
  }
  command <<<
    lexmapr \
      ~{true="-o" false="" _output_file} \
      ~{true="--full" false="" full} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{true="--bucket" false="" bucket} \
      ~{true="--no-cache" false="" no_cache} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    _output_file: "[OUTPUT], --output [OUTPUT] Output file"
    full: "Full output format"
    config: "Path to JSON file containing the IRI of ontologies to fetch terms from"
    bucket: "Classify samples into pre-defined buckets"
    no_cache: "Ignore or replace online cached resources, if there are any."
    profile: "Pre-defined sets of command-line arguments for specialized purposes: * ifsac:  * maps samples to food and environmental resources * classifies samples into ifsac labels * outputs content to ``ifsac_output.tsv``"
    v: ""
  }
}