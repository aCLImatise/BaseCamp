class: CommandLineTool
id: bacphlip.cwl
inputs:
- id: in_input_file
  doc: "Should be a valid path to a single genome (nucleotide)\nFASTA file containing\
    \ only 1 record/contig."
  type: File?
  inputBinding:
    prefix: --input_file
- id: in_force_overwrite
  doc: "Whether to overwrite all existing files that will be\ncreated if they exist.\
    \ Default is False"
  type: boolean?
  inputBinding:
    prefix: --force_overwrite
- id: in_multi_fast_a
  doc: "By default, BACPHLIP assumes that the input file\ncontains one genome (nucleotide)\
    \ sequence record.\nUsers providing a multi_fasta input file must use this\nflag.\
    \ Note that each record should be uniquely named\nand should contain complete\
    \ genomes for different\nphages. BACPHLIP should not be run on incomplete /\n\
    fragmented genomes spanning mulitple records."
  type: boolean?
  inputBinding:
    prefix: --multi_fasta
- id: in_local_hmm_search
  doc: "By default, BACPHLIP assumes a system install of\n\"hmmsearch\". Use this\
    \ flag to provide a custom path to\na local install of hmmsearch if necessary.\n"
  type: File?
  inputBinding:
    prefix: --local_hmmsearch
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bacphlip:0.9.6--py_0
cwlVersion: v1.1
baseCommand:
- bacphlip
