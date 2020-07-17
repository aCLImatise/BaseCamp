version 1.0

task HalLiftover {
  input {
    String? out_bed_version
    String hal_file
    String src_genome
    String src_bed
    String tgt_genome
    String tgt_bed
  }
  command <<<
    halLiftover \
      ~{hal_file} \
      ~{src_genome} \
      ~{src_bed} \
      ~{tgt_genome} \
      ~{tgt_bed} \
      ~{if defined(out_bed_version) then ("--outBedVersion " +  '"' + out_bed_version + '"') else ""}
  >>>
  parameter_meta {
    out_bed_version: "specified. [default = 0]"
    hal_file: ""
    src_genome: ""
    src_bed: ""
    tgt_genome: ""
    tgt_bed: ""
  }
}