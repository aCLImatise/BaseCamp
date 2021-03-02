class: CommandLineTool
id: RohHunter.cwl
inputs:
- id: in_in
  doc: Input variant list in VCF format.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output TSV file with ROH regions.
  type: File?
  inputBinding:
    prefix: -out
- id: in_annotate
  doc: "List of BED files used for annotation. Each file adds a column to the output\
    \ file. The base filename is used as colum name and 4th column of the BED file\
    \ is used as annotation value.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -annotate
- id: in_var_min_dp
  doc: "Minimum variant depth ('DP'). Variants with lower depth are excluded from\
    \ the analysis.\nDefault value: '20'"
  type: long?
  inputBinding:
    prefix: -var_min_dp
- id: in_var_min_q
  doc: "Minimum variant quality. Variants with lower quality are excluded from the\
    \ analysis.\nDefault value: '30'"
  type: double?
  inputBinding:
    prefix: -var_min_q
- id: in_var_af_keys
  doc: "Comma-separated allele frequency info field names in 'in'.\nDefault value:\
    \ ''"
  type: string?
  inputBinding:
    prefix: -var_af_keys
- id: in_var_af_keys_vep
  doc: "Comma-separated VEP CSQ field names of allele frequency annotations in 'in'.\n\
    Default value: ''"
  type: string?
  inputBinding:
    prefix: -var_af_keys_vep
- id: in_roh_min_q
  doc: "Minimum Q score of output ROH regions.\nDefault value: '30'"
  type: double?
  inputBinding:
    prefix: -roh_min_q
- id: in_roh_min_markers
  doc: "Minimum marker count of output ROH regions.\nDefault value: '20'"
  type: long?
  inputBinding:
    prefix: -roh_min_markers
- id: in_roh_min_size
  doc: "Minimum size in Kb of output ROH regions.\nDefault value: '20'"
  type: double?
  inputBinding:
    prefix: -roh_min_size
- id: in_ext_marker_perc
  doc: "Percentage of ROH markers that can be spanned when merging ROH regions .\n\
    Default value: '1'"
  type: double?
  inputBinding:
    prefix: -ext_marker_perc
- id: in_ext_size_perc
  doc: "Percentage of ROH size that can be spanned when merging ROH regions.\nDefault\
    \ value: '50'"
  type: double?
  inputBinding:
    prefix: -ext_size_perc
- id: in_inc_chrx
  doc: "Include chrX into the analysis. Excluded by default.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -inc_chrx
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output TSV file with ROH regions.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_annotate
  doc: "List of BED files used for annotation. Each file adds a column to the output\
    \ file. The base filename is used as colum name and 4th column of the BED file\
    \ is used as annotation value.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_annotate)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- RohHunter
