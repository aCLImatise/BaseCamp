class: CommandLineTool
id: secapr_assemble_reads.cwl
inputs:
- id: in_input
  doc: "Call the folder that contains the trimmed reads,\norganized in a separate\
    \ subfolder for each sample. The\nname of the subfolder has to start with the\
    \ sample\nname, delimited with an underscore [_] (default output\nof secapr clean_reads\
    \ function)"
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_output
  doc: The output directory where results will be saved
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_assembler
  doc: The assembler to use (default = spades).
  type: string?
  inputBinding:
    prefix: --assembler
- id: in_km_er
  doc: "Set the kmer value (only available for Abyss and\nSpades). Provide single\
    \ value for Abyss, or list of\nkmers for Spades, e.g. \"--kmer 21,33,55\". Default\
    \ for\nAbyss is 35, and for spades it is 21,33,55,77,99,127.\nNote that Spades\
    \ only accepts uneven kmer values."
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_contig_length
  doc: "Set the minimum contig length for the assembly.\nContigs that are shorter\
    \ than this threshold will be\ndiscarded."
  type: long?
  inputBinding:
    prefix: --contig_length
- id: in_max_memory
  doc: "Set the maximum memory to be used during assembly in\nGB (only available for\
    \ Spades). This can be necessary\nwhen working with computing nodes with limited\
    \ memory\nor to avoid over-allocation of computing resources on\nclusters which\
    \ can in some cases cause your assembly\nto be stopped or interrupted."
  type: long?
  inputBinding:
    prefix: --max_memory
- id: in_single_reads
  doc: "Use this flag if you additionally want to use single\nreads for the assembly"
  type: boolean?
  inputBinding:
    prefix: --single_reads
- id: in_cores
  doc: "For parallel processing you can set the number of\ncores you want to run the\
    \ assembly on.\n"
  type: long?
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input
  doc: "Call the folder that contains the trimmed reads,\norganized in a separate\
    \ subfolder for each sample. The\nname of the subfolder has to start with the\
    \ sample\nname, delimited with an underscore [_] (default output\nof secapr clean_reads\
    \ function)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_input)
- id: out_output
  doc: The output directory where results will be saved
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- secapr
- assemble_reads
