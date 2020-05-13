class: CommandLineTool
id: optimir_libprep.cwl
inputs:
- id: vcf
  doc: Full path of the input VCF file.
  type: string
  inputBinding:
    prefix: --vcf
- id: matures_fast_a
  doc: 'Path to the reference library containing mature miRNAs sequences [default:
    miRBase 21]'
  type: string
  inputBinding:
    prefix: --maturesFasta
- id: hairpins_fast_a
  doc: 'Path to the reference library containing pri-miRNAs sequences [default: miRBase
    21]'
  type: string
  inputBinding:
    prefix: --hairpinsFasta
- id: gff3
  doc: 'Path to the reference library containing miRNAs and pri-miRNAs coordinates
    [default: miRBase v21, GRCh38 coordinates]'
  type: string
  inputBinding:
    prefix: --gff3
- id: dir_output
  doc: 'Full path of the directory where output files are generated [default: ./OptimiR_Results_Dir/]'
  type: string
  inputBinding:
    prefix: --dirOutput
- id: bowtie2_build
  doc: 'Provide path to the bowtie2 index builder binary [default: from $PATH]'
  type: string
  inputBinding:
    prefix: --bowtie2_build
outputs: []
cwlVersion: v1.1
baseCommand:
- optimir
- libprep
