version 1.0

task Lexmapr {
  input {
    File? output_file
    Boolean? full
    File? config
    Boolean? bucket
    Boolean? no_cache
    String? profile
    Boolean? v
  }
  command <<<
    lexmapr \
      ~{if (output_file) then "-o" else ""} \
      ~{if (full) then "--full" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if (bucket) then "--bucket" else ""} \
      ~{if (no_cache) then "--no-cache" else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    output_file: "[OUTPUT], --output [OUTPUT]\\nOutput file"
    full: "Full output format"
    config: "Path to JSON file containing the IRI of ontologies to fetch terms from"
    bucket: "Classify samples into pre-defined buckets"
    no_cache: "Ignore or replace online cached resources, if there are any."
    profile: "Pre-defined sets of command-line arguments for specialized purposes:\\n* ifsac:\\n* maps samples to food and environmental resources\\n* classifies samples into ifsac labels\\n* outputs content to ``ifsac_output.tsv``\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}