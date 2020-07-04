version 1.0

task Hal4dExtract {
  input {
    String hal_path
    String ref_genome
    String in_bed
    String out_bed
  }
  command <<<
    hal4dExtract \
      ~{hal_path} \
      ~{ref_genome} \
      ~{in_bed} \
      ~{out_bed}
  >>>
  parameter_meta {
    hal_path: ""
    ref_genome: ""
    in_bed: ""
    out_bed: ""
  }
}