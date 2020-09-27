class: CommandLineTool
id: optimir_libprep.cwl
inputs:
- id: in_vcf
  doc: Full path of the input VCF file.
  type: File
  inputBinding:
    prefix: --vcf
- id: in_matures_fast_a
  doc: "Path to the reference library containing mature miRNAs\nsequences [default:\
    \ miRBase 21]"
  type: File
  inputBinding:
    prefix: --maturesFasta
- id: in_hairpins_fast_a
  doc: "Path to the reference library containing pri-miRNAs\nsequences [default: miRBase\
    \ 21]"
  type: File
  inputBinding:
    prefix: --hairpinsFasta
- id: in_gff_three
  doc: "Path to the reference library containing miRNAs and\npri-miRNAs coordinates\
    \ [default: miRBase v21, GRCh38\ncoordinates]"
  type: long
  inputBinding:
    prefix: --gff3
- id: in_dir_output
  doc: "Full path of the directory where output files are\ngenerated [default: ./OptimiR_Results_Dir/]"
  type: File
  inputBinding:
    prefix: --dirOutput
- id: in_bowtie_two_build
  doc: "Provide path to the bowtie2 index builder binary\n[default: from $PATH]\n"
  type: long
  inputBinding:
    prefix: --bowtie2_build
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dir_output
  doc: "Full path of the directory where output files are\ngenerated [default: ./OptimiR_Results_Dir/]"
  type: File
  outputBinding:
    glob: $(inputs.in_dir_output)
cwlVersion: v1.1
baseCommand:
- optimir
- libprep
