class: CommandLineTool
id: fastmlst.cwl
inputs:
- id: in_threads
  doc: Number of threads to use (default 8)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: 'Verbose output level choices: [0, 1, 2]'
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_separator
  doc: Choose a character to use as a separator (default ",")
  type: string?
  inputBinding:
    prefix: --separator
- id: in_scheme
  doc: "Set a scheme target (I am not dumb, let me choose a\nscheme by myself!)"
  type: string?
  inputBinding:
    prefix: --scheme
- id: in_scheme_list
  doc: Show all schemes supported
  type: boolean?
  inputBinding:
    prefix: --scheme-list
- id: in_fast_a_output
  doc: "File name of the concatenated alleles output (default\n\"\")"
  type: File?
  inputBinding:
    prefix: --fastaoutput
- id: in_table_output
  doc: File name of the MLST table output (default STDOUT)
  type: File?
  inputBinding:
    prefix: --tableoutput
- id: in_coverage
  doc: "DNA %Cov to report high quality partial allele [?]\n(default 99%)"
  type: long?
  inputBinding:
    prefix: --coverage
- id: in_identity
  doc: "DNA %Identity of full allelle to consider 'similar'\n[~] (default 95%)"
  type: long?
  inputBinding:
    prefix: --identity
- id: in_update_mlst
  doc: Perform an update of the PubMLST database
  type: boolean?
  inputBinding:
    prefix: --update-mlst
- id: in_fast_a_two_line
  doc: The fasta files will be in fasta2line format
  type: boolean?
  inputBinding:
    prefix: --fasta2line
- id: in_long_header
  doc: "If --longheader is invoked, the header of FASTA file\ncontain a long description"
  type: boolean?
  inputBinding:
    prefix: --longheader
- id: in_legacy
  doc: "If --legacy is invoked, the csv reported contain the\ngene name and the allele\
    \ id in the row [adk(1),atpA(4)\n,dxr(7),glyA(1),recA(1),sodA(3),tpi(3)]. This\
    \ option\nis only available when the --scheme is defined"
  type: boolean?
  inputBinding:
    prefix: --legacy
- id: in_novel
  doc: File name of the novel alleles
  type: File?
  inputBinding:
    prefix: --novel
- id: in_genomes
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fast_a_output
  doc: "File name of the concatenated alleles output (default\n\"\")"
  type: File?
  outputBinding:
    glob: $(inputs.in_fast_a_output)
- id: out_table_output
  doc: File name of the MLST table output (default STDOUT)
  type: File?
  outputBinding:
    glob: $(inputs.in_table_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastmlst:0.0.12--py_0
cwlVersion: v1.1
baseCommand:
- fastmlst
