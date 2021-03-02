class: CommandLineTool
id: RNAdos.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_verbose
  doc: "Be verbose.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_sequence
  doc: The RNA sequence (ACGU)
  type: string?
  inputBinding:
    prefix: --sequence
- id: in_max_energy
  doc: "Structures are only counted until this threshold\nis reached. Default is 0\
    \ kcal/mol.\n(default=`0')"
  type: long?
  inputBinding:
    prefix: --max-energy
- id: in_num_threads
  doc: "Set the number of threads used for calculations\n(only available when compiled\
    \ with OpenMP\nsupport)"
  type: long?
  inputBinding:
    prefix: --numThreads
- id: in_temp
  doc: "Rescale energy parameters to a temperature of temp\nC. Default is 37C."
  type: long?
  inputBinding:
    prefix: --temp
- id: in_dangles
  doc: "How to treat \"dangling end\" energies for bases\nadjacent to helices in free\
    \ ends and multi-loops\n(default=`2')"
  type: long?
  inputBinding:
    prefix: --dangles
- id: in_param_file
  doc: "Read energy parameters from paramfile, instead of\nusing the default parameter\
    \ set."
  type: File?
  inputBinding:
    prefix: --paramFile
- id: in_hashtable_bits
  doc: "Set the size of the hash table for each cell in\nthe dp-matrices.\n(default=`20')"
  type: long?
  inputBinding:
    prefix: --hashtable-bits
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- RNAdos
