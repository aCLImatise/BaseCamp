version 1.0

task MuSECall {
  input {
    File? faidx_indexed_file
    String? single_region_chrpospos
    File? list_chrpospos_bed
    String? output_file_name
    String tumor_dot_bam
    String matched_normal_dot_bam
  }
  command <<<
    MuSE call \
      ~{tumor_dot_bam} \
      ~{matched_normal_dot_bam} \
      ~{if defined(faidx_indexed_file) then ("-f " +  '"' + faidx_indexed_file + '"') else ""} \
      ~{if defined(single_region_chrpospos) then ("-r " +  '"' + single_region_chrpospos + '"') else ""} \
      ~{if defined(list_chrpospos_bed) then ("-l " +  '"' + list_chrpospos_bed + '"') else ""} \
      ~{if defined(output_file_name) then ("-O " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    faidx_indexed_file: "faidx indexed reference sequence file"
    single_region_chrpospos: "single region (chr:pos-pos) where somatic mutations are called"
    list_chrpospos_bed: "list of regions (chr:pos-pos or BED), one region per line"
    output_file_name: "output file name (suffix '.MuSE.txt' is automatically added)"
    tumor_dot_bam: ""
    matched_normal_dot_bam: ""
  }
}