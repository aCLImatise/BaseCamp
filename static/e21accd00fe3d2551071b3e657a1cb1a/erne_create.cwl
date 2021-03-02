class: CommandLineTool
id: erne_create.cwl
inputs:
- id: in_fast_a
  doc: input file (can be repeated several time) [REQUIRED]
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_output_prefix
  doc: "output reference file name in ERNE format. Suffix added\nautomatically: .ebh\
    \ for dB-Hash reference, .ebm for\ndB-Hash methylated reference. [REQUIRED]"
  type: File?
  inputBinding:
    prefix: --output-prefix
- id: in_methyl_hash
  doc: create reference for methylation search
  type: boolean?
  inputBinding:
    prefix: --methyl-hash
- id: in_fingerprint_length_default
  doc: "[DEPRECATED] fingerprint length (default is\nautodetected: log4(bl*n/2), where\
    \ n=text length);  the\nrange of admissible values is 5-32. With --methyl-hash\n\
    the range of admissible values is 10-64"
  type: long?
  inputBinding:
    prefix: --k
- id: in_bl
  doc: "seed length (default: 20 for DNA search, 30 for\nBS-search)"
  type: long?
  inputBinding:
    prefix: --bl
- id: in_offrate_sa_pointers
  doc: 'offrate for SA pointers (default: 16).'
  type: long?
  inputBinding:
    prefix: --o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_prefix
  doc: "output reference file name in ERNE format. Suffix added\nautomatically: .ebh\
    \ for dB-Hash reference, .ebm for\ndB-Hash methylated reference. [REQUIRED]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- erne-create
