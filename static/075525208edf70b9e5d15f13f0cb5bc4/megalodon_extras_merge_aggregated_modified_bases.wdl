version 1.0

task MegalodonExtrasMergeAggregatedModifiedBases {
  input {
    File? output_bed_methyl_file
    Boolean? sorted_inputs
  }
  command <<<
    megalodon_extras merge aggregated_modified_bases \
      ~{if defined(output_bed_methyl_file) then ("--output-bed-methyl-file " +  '"' + output_bed_methyl_file + '"') else ""} \
      ~{if (sorted_inputs) then "--sorted-inputs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0"
  }
  parameter_meta {
    output_bed_methyl_file: "Output bedmethyl filename. Cannot exist before this\\ncommand. Default: merged_modified_bases.bed"
    sorted_inputs: "If input bedmethyl files are sorted, files will be\\nmerged without reading full file into memory. Sort\\norder should be `sort -k1,1V -k2,2n`.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_bed_methyl_file = "${in_output_bed_methyl_file}"
  }
}