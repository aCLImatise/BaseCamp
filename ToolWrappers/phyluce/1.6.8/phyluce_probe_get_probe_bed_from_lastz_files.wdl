version 1.0

task PhyluceProbeGetProbeBedFromLastzFiles {
  input {
    String? var_output
    Directory? input_directory_containing
  }
  command <<<
    phyluce_probe_get_probe_bed_from_lastz_files \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(input_directory_containing) then ("--input " +  '"' + input_directory_containing + '"') else ""}
  >>>
  parameter_meta {
    var_output: ""
    input_directory_containing: "The input directory containing lastz files"
  }
  output {
    File out_stdout = stdout()
  }
}