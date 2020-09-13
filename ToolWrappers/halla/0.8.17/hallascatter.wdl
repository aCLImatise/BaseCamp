version 1.0

task Hallascatter {
  input {
    Directory? halla_output_directory
    File? outfile
  }
  command <<<
    hallascatter \
      ~{if defined(halla_output_directory) then ("--input " +  '"' + halla_output_directory + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    halla_output_directory: "HAllA output directory"
    outfile: "output file name"
  }
  output {
    File out_stdout = stdout()
    Directory out_halla_output_directory = "${in_halla_output_directory}"
    File out_outfile = "${in_outfile}"
  }
}