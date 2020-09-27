version 1.0

task MergeCoords {
  input {
    File? output_file_stdout
    String merge_coords_cmdline
    String coords
  }
  command <<<
    merge_coords \
      ~{merge_coords_cmdline} \
      ~{coords} \
      ~{if defined(output_file_stdout) then ("--output " +  '"' + output_file_stdout + '"') else ""}
  >>>
  parameter_meta {
    output_file_stdout: "Output file (stdout)"
    merge_coords_cmdline: ""
    coords: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stdout = "${in_output_file_stdout}"
  }
}