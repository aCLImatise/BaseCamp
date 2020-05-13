class: CommandLineTool
id: collectSampleMetrics.sh.cwl
inputs:
- id: sample_dir
  doc: Relative or absolute directory of the sample
  type: string
  inputBinding:
    position: 0
- id: reference_file
  doc: Relative or absolute path to the reference fasta file
  type: string
  inputBinding:
    position: 1
- id: force
  doc: 'Force processing even when result files already exist and are newer than inputs
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: output
  doc: 'Output file. Relative or absolute path to the metrics file (default: metrics)'
  type: File
  inputBinding:
    prefix: --output
- id: max_snps
  doc: 'Maximum allowed number of SNPs per sample (default: -1)'
  type: long
  inputBinding:
    prefix: --maxsnps
- id: c
  doc: 'File name of the consensus fasta file which must exist in the sample directory
    (default: consensus.fasta)'
  type: string
  inputBinding:
    prefix: -c
- id: c
  doc: 'File name of the consensus preserved fasta file which must exist in the sample
    directory (default: consensus_preserved.fasta)'
  type: string
  inputBinding:
    prefix: -C
- id: v
  doc: 'File name of the consensus vcf file which must exist in the sample directory
    (default: consensus.vcf)'
  type: string
  inputBinding:
    prefix: -v
- id: v
  doc: 'File name of the consensus preserved vcf file which must exist in the sample
    directory (default: consensus_preserved.vcf)'
  type: string
  inputBinding:
    prefix: -V
- id: verbose
  doc: '0..5        Verbose message level (0=no info, 5=lots) (default: 1)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- collectSampleMetrics.sh
