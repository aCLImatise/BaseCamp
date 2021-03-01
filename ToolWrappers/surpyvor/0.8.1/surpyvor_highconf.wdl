version 1.0

task SurpyvorHighconf {
  input {
    Boolean? verbose
    Array[String] variants
    File? output_file
    String? distance
    Int? minlength
  }
  command <<<
    surpyvor highconf \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(variants) then ("--variants " +  '"' + variants + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print out more information while running."
    variants: "vcf files to merge"
    output_file: "output file"
    distance: "distance between variants to merge"
    minlength: "Minimum length of variants to consider\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}