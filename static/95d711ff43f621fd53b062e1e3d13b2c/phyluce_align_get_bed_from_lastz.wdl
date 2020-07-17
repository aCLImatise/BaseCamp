version 1.0

task PhyluceAlignGetBedFromLastz {
  input {
    String? last_z
    String? output_bed_file
    String? identity
    String? continuity
    Boolean? long_format
    String? conf
    Array[String] sections
  }
  command <<<
    phyluce_align_get_bed_from_lastz \
      ~{if defined(last_z) then ("--lastz " +  '"' + last_z + '"') else ""} \
      ~{if defined(output_bed_file) then ("--output " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(continuity) then ("--continuity " +  '"' + continuity + '"') else ""} \
      ~{true="--long-format" false="" long_format} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(sections) then ("--sections " +  '"' + sections + '"') else ""}
  >>>
  parameter_meta {
    last_z: "The input lastz file."
    output_bed_file: "The output BED file"
    identity: "The minimum percent identity to output"
    continuity: "The minimum percent continuity to output"
    long_format: "Long-format LASTZ file"
    conf: "A python INI formatted file containins loci to keep"
    sections: "The sections of files to move"
  }
}