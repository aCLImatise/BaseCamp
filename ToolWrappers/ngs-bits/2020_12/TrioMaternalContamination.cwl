class: CommandLineTool
id: TrioMaternalContamination.cwl
inputs:
- id: in_bam_m
  doc: Input BAM/CRAM file of mother.
  type: File?
  inputBinding:
    prefix: -bam_m
- id: in_bam_f
  doc: Input BAM/CRAM file of father.
  type: File?
  inputBinding:
    prefix: -bam_f
- id: in_bam_c
  doc: Input BAM/CRAM file of child.
  type: File?
  inputBinding:
    prefix: -bam_c
- id: in_min_depth
  doc: "Minimum depth for calling SNPs.\nDefault value: '3'"
  type: long?
  inputBinding:
    prefix: -min_depth
- id: in_min_alt_count
  doc: "Minimum number of alternate observations for calling a SNP.\nDefault value:\
    \ '1'"
  type: long?
  inputBinding:
    prefix: -min_alt_count
- id: in_build
  doc: "Genome build used to generate the input.\nDefault value: 'hg19'\nValid: 'hg19,hg38'"
  type: long?
  inputBinding:
    prefix: -build
- id: in_out
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_ref
  doc: "Reference genome for CRAM support (mandatory if CRAM is used).\nDefault value:\
    \ ''"
  type: string?
  inputBinding:
    prefix: -ref
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
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- TrioMaternalContamination
