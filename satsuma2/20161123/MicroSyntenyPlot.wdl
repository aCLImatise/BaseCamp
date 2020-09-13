version 1.0

task MicroSyntenyPlot {
  input {
    File? string_homologybyxcorr_file
  }
  command <<<
    MicroSyntenyPlot \
      ~{if (string_homologybyxcorr_file) then "-i" else ""}
  >>>
  parameter_meta {
    string_homologybyxcorr_file: "<string> : HomologyByXCorr output file"
  }
  output {
    File out_stdout = stdout()
    File out_string_homologybyxcorr_file = "${in_string_homologybyxcorr_file}"
  }
}