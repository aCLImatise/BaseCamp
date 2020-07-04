version 1.0

task Quickjunc {
  input {
    String? bam_file_name
    String? anchor_size_default
  }
  command <<<
    quickjunc \
      ~{if defined(bam_file_name) then ("-i " +  '"' + bam_file_name + '"') else ""} \
      ~{if defined(anchor_size_default) then ("-a " +  '"' + anchor_size_default + '"') else ""}
  >>>
  parameter_meta {
    bam_file_name: "BAM file name (default: None)"
    anchor_size_default: "Anchor size (default: 8)"
  }
}