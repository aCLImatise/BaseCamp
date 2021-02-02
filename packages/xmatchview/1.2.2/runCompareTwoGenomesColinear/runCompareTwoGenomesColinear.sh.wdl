version 1.0

task RunCompareTwoGenomesColinearsh {
  input {
    Int cross_match_slash_minimap_two
  }
  command <<<
    runCompareTwoGenomesColinear_sh \
      ~{cross_match_slash_minimap_two}
  >>>
  parameter_meta {
    cross_match_slash_minimap_two: "PATH-TO-FONTS"
  }
  output {
    File out_stdout = stdout()
  }
}