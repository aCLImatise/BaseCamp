class: CommandLineTool
id: MappingQC.cwl
inputs:
- id: in_in
  doc: Input BAM/CRAM file.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output qcML file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_roi
  doc: "Input target region BED file (for panel, WES, etc.).\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -roi
- id: in_wgs
  doc: "WGS mode without target region. Genome information is taken from the BAM/CRAM\
    \ file.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -wgs
- id: in_rna
  doc: "RNA mode without target region. Genome information is taken from the BAM/CRAM\
    \ file.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -rna
- id: in_txt
  doc: "Writes TXT format instead of qcML.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -txt
- id: in_min_mapq
  doc: "Minmum mapping quality to consider a read mapped.\nDefault value: '1'"
  type: long?
  inputBinding:
    prefix: -min_mapq
- id: in_no_cont
  doc: "Disables sample contamination calculation, e.g. for tumor or non-human samples.\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -no_cont
- id: in_debug
  doc: "Enables verbose debug outout.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_build
  doc: "Genome build used to generate the input (needed for contamination only).\n\
    Default value: 'hg19'\nValid: 'hg19,hg38'"
  type: long?
  inputBinding:
    prefix: -build
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
  doc: "Output qcML file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- MappingQC
