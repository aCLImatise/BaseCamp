class: CommandLineTool
id: SampleAncestry.cwl
inputs:
- id: in_in
  doc: Input variant list(s) in VCF format.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output TSV file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_min_snps
  doc: "Minimum number of informative SNPs for population determination. If less SNPs\
    \ are found, 'NOT_ENOUGH_SNPS' is returned.\nDefault value: '1000'"
  type: long?
  inputBinding:
    prefix: -min_snps
- id: in_pop_dist
  doc: "Minimum relative distance between first/second population score. If below\
    \ this score 'ADMIXED/UNKNOWN' is called.\nDefault value: '0.15'"
  type: double?
  inputBinding:
    prefix: -pop_dist
- id: in_build
  doc: "Genome build used to generate the input.\nDefault value: 'hg19'\nValid: 'hg19,hg38'"
  type: long?
  inputBinding:
    prefix: -build
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
  doc: "Output TSV file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- SampleAncestry
