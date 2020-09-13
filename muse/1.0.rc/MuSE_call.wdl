version 1.0

task MuSECall {
  input {
    File? faidx_indexed_reference
    String? single_region_chrpospos
    File? list_regions_oneregion
    File? output_file_name
    String tumor_dot_bam
    String matched_normal_dot_bam
  }
  command <<<
    MuSE call \
      ~{tumor_dot_bam} \
      ~{matched_normal_dot_bam} \
      ~{if defined(faidx_indexed_reference) then ("-f " +  '"' + faidx_indexed_reference + '"') else ""} \
      ~{if defined(single_region_chrpospos) then ("-r " +  '"' + single_region_chrpospos + '"') else ""} \
      ~{if defined(list_regions_oneregion) then ("-l " +  '"' + list_regions_oneregion + '"') else ""} \
      ~{if defined(output_file_name) then ("-O " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    faidx_indexed_reference: "faidx indexed reference sequence file"
    single_region_chrpospos: "single region (chr:pos-pos) where somatic\\nmutations are called"
    list_regions_oneregion: "list of regions (chr:pos-pos or BED), one\\nregion per line"
    output_file_name: "output file name (suffix '.MuSE.txt' is\\nautomatically added)\\n"
    tumor_dot_bam: ""
    matched_normal_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}