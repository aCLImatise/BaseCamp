version 1.0

task Hotspot3dCalroi {
  input {
    Directory? output_dir
  }
  command <<<
    hotspot3d calroi \
      ~{if (output_dir) then "--output-dir" else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory of proximity files"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}