version 1.0

task RunSpruceViewsh {
  input {
    String label
    Int cross_match_slash_minimap_two
  }
  command <<<
    runSpruceView_sh \
      ~{label} \
      ~{cross_match_slash_minimap_two}
  >>>
  parameter_meta {
    label: "SCALE (1:n)"
    cross_match_slash_minimap_two: "PATH-TO-FONTS"
  }
  output {
    File out_stdout = stdout()
  }
}