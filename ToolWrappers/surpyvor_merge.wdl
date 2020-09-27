version 1.0

task SurpyvorMerge {
  input {
    Boolean? verbose
    Array[String] variants
    File? output_file
    String? distance
    Int? minlength
    Int? callers
    Boolean? ignore_type
    Boolean? strand
    Boolean? estimate_distance
  }
  command <<<
    surpyvor merge \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(variants) then ("--variants " +  '"' + variants + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(callers) then ("--callers " +  '"' + callers + '"') else ""} \
      ~{if (ignore_type) then "--ignore_type" else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (estimate_distance) then "--estimate_distance" else ""}
  >>>
  parameter_meta {
    verbose: "Print out more information while running."
    variants: "vcf files to merge"
    output_file: "output file"
    distance: "distance between variants to merge"
    minlength: "Minimum length of variants to consider"
    callers: "Minimum number of callers to support a variant"
    ignore_type: "Ignore the type of the structural variant"
    strand: "Take strand into account"
    estimate_distance: "Estimate distance between calls\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}