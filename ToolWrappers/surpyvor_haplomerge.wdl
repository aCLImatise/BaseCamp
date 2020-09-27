version 1.0

task SurpyvorHaplomerge {
  input {
    Boolean? verbose
    Boolean? variants
    File? output_file_default
    String? name
    Int? distance
    Int? minlength
    Int? callers
    Boolean? ignore_type
    Boolean? strand
    Boolean? estimate_distance
  }
  command <<<
    surpyvor haplomerge \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (variants) then "--variants" else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(callers) then ("--callers " +  '"' + callers + '"') else ""} \
      ~{if (ignore_type) then "--ignore_type" else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (estimate_distance) then "--estimate_distance" else ""}
  >>>
  parameter_meta {
    verbose: "Print out more information while running. (default:\\nFalse)"
    variants: "[VARIANTS [VARIANTS ...]]\\nvcf files to merge (default: None)"
    output_file_default: "output file (default: stdout)"
    name: "name of sample in output VCF (default: stdout)"
    distance: "distance between variants to merge (default: 200)"
    minlength: "Minimum length of variants to consider (default: 50)"
    callers: "Minimum number of callers to support a variant\\n(default: 1)"
    ignore_type: "Ignore the type of the structural variant (default:\\nFalse)"
    strand: "Take strand into account (default: False)"
    estimate_distance: "Estimate distance between calls (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}