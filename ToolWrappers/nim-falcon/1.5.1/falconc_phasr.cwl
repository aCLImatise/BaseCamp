class: CommandLineTool
id: falconc_phasr.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__alnfn_string
  doc: =, --aln-fn=      string  REQUIRED  BAM alignment, sorted on 'coordinate'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in__reffn_string
  doc: =, --ref-fn=      string  REQUIRED  FASTA reference
  type: boolean?
  inputBinding:
    prefix: -r
- id: in__outfn_string
  doc: =, --out-fn=      string  REQUIRED  Output file name
  type: File?
  inputBinding:
    prefix: -o
- id: in_iterations_int_number
  doc: =, --iterations=  int     1000      Number of phasing iterations per read
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_kmersize_int_size
  doc: =, --kmersize=    int     21        Kmer size
  type: boolean?
  inputBinding:
    prefix: -k
- id: in__delta_float
  doc: =, --delta=       float   0.75      Frequency cut
  type: boolean?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outfn_string
  doc: =, --out-fn=      string  REQUIRED  Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in__outfn_string)
hints: []
cwlVersion: v1.1
baseCommand:
- falconc
- phasr
