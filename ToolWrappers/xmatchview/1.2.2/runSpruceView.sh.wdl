version 1.0

task RunSpruceViewsh {
  input {
    Int cross_match_slash_minimap_two
  }
  command <<<
    runSpruceView_sh \
      ~{cross_match_slash_minimap_two}
  >>>
  parameter_meta {
    cross_match_slash_minimap_two: "PATH-TO-FONTS"
  }
  output {
    File out_stdout = stdout()
  }
}