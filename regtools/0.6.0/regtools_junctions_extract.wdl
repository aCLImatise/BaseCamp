version 1.0

task RegtoolsJunctionsExtract {
  input {
    Int? minimum_anchor_length
    Int? minimum_intron_length
    Int? maximum_intron_length
    File? file_write_output
    String? region_identify_junctionsin
    Int? strand_specificity_rna
    String? tag_used_label
    String indexed_alignments_dot_bam
  }
  command <<<
    regtools junctions extract \
      ~{indexed_alignments_dot_bam} \
      ~{if defined(minimum_anchor_length) then ("-a " +  '"' + minimum_anchor_length + '"') else ""} \
      ~{if defined(minimum_intron_length) then ("-m " +  '"' + minimum_intron_length + '"') else ""} \
      ~{if defined(maximum_intron_length) then ("-M " +  '"' + maximum_intron_length + '"') else ""} \
      ~{if defined(file_write_output) then ("-o " +  '"' + file_write_output + '"') else ""} \
      ~{if defined(region_identify_junctionsin) then ("-r " +  '"' + region_identify_junctionsin + '"') else ""} \
      ~{if defined(strand_specificity_rna) then ("-s " +  '"' + strand_specificity_rna + '"') else ""} \
      ~{if defined(tag_used_label) then ("-t " +  '"' + tag_used_label + '"') else ""}
  >>>
  parameter_meta {
    minimum_anchor_length: "Minimum anchor length. Junctions which satisfy a minimum\\nanchor length on both sides are reported. [8]"
    minimum_intron_length: "Minimum intron length. [70]"
    maximum_intron_length: "Maximum intron length. [500000]"
    file_write_output: "The file to write output to. [STDOUT]"
    region_identify_junctionsin: "The region to identify junctions\\nin \\\"chr:start-end\\\" format. Entire BAM by default."
    strand_specificity_rna: "Strand specificity of RNA library preparation\\n(0 = unstranded, 1 = first-strand/RF, 2, = second-strand/FR). REQUIRED"
    tag_used_label: "Tag used in bam to label strand. [XS]"
    indexed_alignments_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_write_output = "${in_file_write_output}"
  }
}