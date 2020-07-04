version 1.0

task Rename {
  input {
    Boolean? camelcase
    String? switches_vertical_line_transforms
    File? files
  }
  command <<<
    rename \
      ~{switches_vertical_line_transforms} \
      ~{files} \
      ~{true="--camelcase" false="" camelcase}
  >>>
  parameter_meta {
    camelcase: "(see manual)"
    switches_vertical_line_transforms: ""
    files: ""
  }
}