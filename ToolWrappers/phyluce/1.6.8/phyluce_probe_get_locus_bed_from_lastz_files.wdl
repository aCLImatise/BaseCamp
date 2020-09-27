version 1.0

task PhyluceProbeGetLocusBedFromLastzFiles {
  input {
    String? var_output
    Directory? input_directory_containing
    String? regex
  }
  command <<<
    phyluce_probe_get_locus_bed_from_lastz_files \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""}
  >>>
  parameter_meta {
    var_output: "[--regex REGEX]"
    input_directory_containing: "The input directory containing lastz files"
    regex: "A regular expression to apply to the probe sequences for\\nreplacement\\n"
  }
  output {
    File out_stdout = stdout()
  }
}