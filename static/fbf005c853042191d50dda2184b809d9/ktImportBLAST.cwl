class: CommandLineTool
id: ktImportBLAST.cwl
inputs:
- id: in_blast_output
  doc: "File containing BLAST results in tabular format (\"Hit table\n(text)\" when\
    \ downloading from NCBI). If running BLAST locally,\nsubject IDs in the local\
    \ database must contain accession\nnumbers, either bare or in the fourth field\
    \ of the\npipe-separated (\"gi|12345|xx|ABC123.1|\") format. By default,\nseparate\
    \ datasets will be created for each input (see [-c])."
  type: string
  inputBinding:
    position: 0
- id: in_magnitudes
  doc: "Optional file listing query IDs with magnitudes, separated by\ntabs. This\
    \ can be used to account for read length or contig\ndepth to obtain a more accurate\
    \ representation of abundance.\nBy default, query sequences without specified\
    \ magnitudes will\nbe assigned a magnitude of 1. Magnitude files for assemblies\n\
    in ACE format can be created with ktGetContigMagnitudes."
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: "A name to show in the list of datasets in the Krona chart (if\nmultiple input\
    \ files are present and [-c] is not specified).\nBy default, the basename of the\
    \ file will be used.\n_________"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krona:2.8--pl526_0
cwlVersion: v1.1
baseCommand:
- ktImportBLAST
