class: CommandLineTool
id: megalodon_extras_merge_aggregated_modified_bases.cwl
inputs:
- id: in_output_bed_methyl_file
  doc: "Output bedmethyl filename. Cannot exist before this\ncommand. Default: merged_modified_bases.bed"
  type: File?
  inputBinding:
    prefix: --output-bed-methyl-file
- id: in_sorted_inputs
  doc: "If input bedmethyl files are sorted, files will be\nmerged without reading\
    \ full file into memory. Sort\norder should be `sort -k1,1V -k2,2n`.\n"
  type: boolean?
  inputBinding:
    prefix: --sorted-inputs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_bed_methyl_file
  doc: "Output bedmethyl filename. Cannot exist before this\ncommand. Default: merged_modified_bases.bed"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bed_methyl_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.3.0--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- merge
- aggregated_modified_bases
