version 1.0

task PhyluceProbeGetLocusBedFromLastzFiles {
  input {
    Directory? input_directory_containing
    Directory? output_directory_hold
    String? regex
  }
  command <<<
    phyluce_probe_get_locus_bed_from_lastz_files \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(output_directory_hold) then ("--output " +  '"' + output_directory_hold + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_directory_containing: "The input directory containing lastz files"
    output_directory_hold: "The output directory to hold BED-formatted files"
    regex: "A regular expression to apply to the probe sequences for\\nreplacement\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_hold = "${in_output_directory_hold}"
  }
}