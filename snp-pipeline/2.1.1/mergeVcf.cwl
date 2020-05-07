class: CommandLineTool
id: mergeVcf.sh.cwl
inputs:
- id: sample_dirs_file
  doc: Relative or absolute path to file containing a list of directories -- one per
    sample
  type: string
  inputBinding:
    position: 0
- id: force
  doc: 'Force processing even when result files already exist and are newer than inputs
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: vcf_name
  doc: 'File name of the vcf files which must exist in each of the sample directories
    (default: consensus.vcf)'
  type: string
  inputBinding:
    prefix: --vcfname
- id: output
  doc: 'Output file. Relative or absolute path to the merged multi-vcf file (default:
    snpma.vcf)'
  type: File
  inputBinding:
    prefix: --output
- id: v
  doc: '0..5, --verbose 0..5 Verbose message level (0=no info, 5=lots) (default: 1)'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mergeVcf.sh
