version 1.0

task FixMapOrdering {
  input {
    File? sam_header
    String in_sam_file
    String out_bam_file
    String? out_unmapped_bam
  }
  command <<<
    fix_map_ordering \
      ~{in_sam_file} \
      ~{out_bam_file} \
      ~{out_unmapped_bam} \
      ~{if defined(sam_header) then ("--sam-header " +  '"' + sam_header + '"') else ""}
  >>>
  parameter_meta {
    sam_header: ""
    in_sam_file: ""
    out_bam_file: ""
    out_unmapped_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}