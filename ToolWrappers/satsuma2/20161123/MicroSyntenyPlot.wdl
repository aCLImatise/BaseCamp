version 1.0

task MicroSyntenyPlot {
  input {
    File? string_homologybyxcorr_output
  }
  command <<<
    MicroSyntenyPlot \
      ~{if (string_homologybyxcorr_output) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_homologybyxcorr_output: "<string> : HomologyByXCorr output file"
  }
  output {
    File out_stdout = stdout()
    File out_string_homologybyxcorr_output = "${in_string_homologybyxcorr_output}"
  }
}