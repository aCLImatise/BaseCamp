class: CommandLineTool
id: CRISPRessoCount.cwl
inputs:
- id: in_utility
  doc: "perform sgRNA enumeration from deep sequencing data-\n)                  \
    \                           )"
  type: string?
  inputBinding:
    prefix: -Utility
- id: in_fast_q
  doc: 'fastq file (default: Fastq filename)'
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_min_average_read_quality
  doc: "Minimum average quality score (phred33) to keep a read\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --min_average_read_quality
- id: in_min_single_bp_quality
  doc: "Minimum single bp score (phred33) to keep a read\n(default: 0)"
  type: long?
  inputBinding:
    prefix: --min_single_bp_quality
- id: in_trac_rrna
  doc: "tracr RNA sequence in each read, for single end reads\nit may necessary to\
    \ change this parameter if the\ntracRNA is not fully sequenced, for example to\n\
    GTTTTAGAG (default: GTTTTAGAGCTAGAAATAGC)"
  type: string?
  inputBinding:
    prefix: --tracrRNA
- id: in_sg_rna_file
  doc: "sgRNA description file. The format required is one\nsgRNA per line, for example:AAAAAGATGATTTTTTTCTC\n\
    AAAATATTTTTATCCCCTAA (default: None)"
  type: File?
  inputBinding:
    prefix: --sgRNA_file
- id: in_name
  doc: 'Output name (default: )'
  type: string?
  inputBinding:
    prefix: --name
- id: in_output_folder
  doc: "Lenght in bp to extract the sgRNA upstream of the\ntracrRNA sequence (default:\
    \ 20)"
  type: Directory?
  inputBinding:
    prefix: --output_folder
- id: in_keep_intermediate
  doc: 'Keep all the intermediate files (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep_intermediate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Lenght in bp to extract the sgRNA upstream of the\ntracrRNA sequence (default:\
    \ 20)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints: []
cwlVersion: v1.1
baseCommand:
- CRISPRessoCount
