class: CommandLineTool
id: fastaFromBed.cwl
inputs:
- id: in_fi
  doc: Input FASTA file
  type: boolean?
  inputBinding:
    prefix: -fi
- id: in_fo
  doc: Output file (opt., default is STDOUT
  type: File?
  inputBinding:
    prefix: -fo
- id: in_bed
  doc: BED/GFF/VCF file of ranges to extract from -fi
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_name_only
  doc: Use the name field for the FASTA header
  type: boolean?
  inputBinding:
    prefix: -nameOnly
- id: in_split
  doc: "Given BED12 fmt., extract and concatenate the sequences\nfrom the BED \"blocks\"\
    \ (e.g., exons)"
  type: boolean?
  inputBinding:
    prefix: -split
- id: in_tab
  doc: Write output in TAB delimited format.
  type: boolean?
  inputBinding:
    prefix: -tab
- id: in_bed_out
  doc: "Report extract sequences in a tab-delimited BED format instead of in FASTA\
    \ format.\n- Default is FASTA format."
  type: boolean?
  inputBinding:
    prefix: -bedOut
- id: in_force_strandedness_occupies
  doc: "Force strandedness. If the feature occupies the antisense,\nstrand, the sequence\
    \ will be reverse complemented.\n- By default, strand information is ignored."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_full_header
  doc: "Use full fasta header.\n- By default, only the word before the first space\
    \ or tab\nis used."
  type: boolean?
  inputBinding:
    prefix: -fullHeader
- id: in_rna
  doc: The FASTA is RNA not DNA. Reverse complementation handled accordingly.
  type: boolean?
  inputBinding:
    prefix: -rna
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_get_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fo
  doc: Output file (opt., default is STDOUT
  type: File?
  outputBinding:
    glob: $(inputs.in_fo)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- fastaFromBed
