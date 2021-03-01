version 1.0

task PhyluceAlignGetBedFromLastz {
  input {
    File? last_z
    File? output_bed_file
    String? identity
    String? continuity
    Boolean? long_format
    File? conf
    Array[String] sections
  }
  command <<<
    phyluce_align_get_bed_from_lastz \
      ~{if defined(last_z) then ("--lastz " +  '"' + last_z + '"') else ""} \
      ~{if defined(output_bed_file) then ("--output " +  '"' + output_bed_file + '"') else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(continuity) then ("--continuity " +  '"' + continuity + '"') else ""} \
      ~{if (long_format) then "--long-format" else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(sections) then ("--sections " +  '"' + sections + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    last_z: "The input lastz file."
    output_bed_file: "The output BED file"
    identity: "The minimum percent identity to output"
    continuity: "The minimum percent continuity to output"
    long_format: "Long-format LASTZ file"
    conf: "A python INI formatted file containins loci to keep"
    sections: "The sections of files to move\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_file = "${in_output_bed_file}"
  }
}