class: CommandLineTool
id: agat_sq_stat_basic.pl.cwl
inputs:
- id: in_input
  doc: "STRING: Input GTF/GFF file. Several files can be processed at\nonce: -i file1\
    \ -i file2"
  type: File
  inputBinding:
    prefix: --input
- id: in_genome
  doc: "That input is design to know the genome size in order to\ncalculate the percentage\
    \ of the genome represented by each kind\nof feature type. You can provide an\
    \ INTEGER or the genome in\nfasta format. If you provide the fasta, the genome\
    \ size will be\ncalculated on the fly."
  type: boolean
  inputBinding:
    prefix: --genome
- id: in_inflate
  doc: "Inflate the statistics taking into account feature with\nmulti-parents. Indeed\
    \ to avoid redundant information, some gff\nfactorize identical features. e.g:\
    \ one exon used in two\ndifferent isoform will be defined only once, and will\
    \ have\nmultiple parent. By default the script count such feature only\nonce.\
    \ Using the inflate option allows to count the feature and\nits size as many time\
    \ there are parents."
  type: boolean
  inputBinding:
    prefix: --inflate
- id: in_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File
  inputBinding:
    prefix: --output
- id: in_agat_sq_stat_basic_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "STRING: Output file. If no output file is specified, the output\nwill be written\
    \ to STDOUT. The result is in tabulate format."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- agat_sq_stat_basic.pl
