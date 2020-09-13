version 1.0

task PhyluceAlignMoveAlignByConfFile {
  input {
    Boolean? opposite
    File? conf
    Directory? alignments
    Directory? output_directory_alignments
    Array[String] sections
    String? extension
  }
  command <<<
    phyluce_align_move_align_by_conf_file \
      ~{if (opposite) then "--opposite" else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(output_directory_alignments) then ("--output " +  '"' + output_directory_alignments + '"') else ""} \
      ~{if defined(sections) then ("--sections " +  '"' + sections + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""}
  >>>
  parameter_meta {
    opposite: ")"
    conf: "The configuration file giving locus names"
    alignments: "The input directory for the alignments"
    output_directory_alignments: "The output directory for the alignments"
    sections: "The sections of files to use as a filter (defaults to\\nall)"
    extension: "The extension of the files to move\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_alignments = "${in_output_directory_alignments}"
  }
}