class: CommandLineTool
id: place_seqs.py.cwl
inputs:
- id: in_study_fast_a
  doc: FASTA of unaligned study sequences.
  type: File?
  inputBinding:
    prefix: --study_fasta
- id: in_sepp__tool
  doc: "|sepp, --placement_tool epa-ng|sepp\nPlacement tool to use when placing sequences\
    \ into\nreference tree. One of \"epa-ng\" or \"sepp\" must be\ninput (default:\
    \ epa-ng)"
  type: string?
  inputBinding:
    prefix: -t
- id: in_ref_dir
  doc: "Directory containing reference sequence files\n(default: /usr/local/lib/python3.6/site-\n\
    packages/picrust2/default_files/prokaryotic/pro_ref).\nPlease see the online documentation\
    \ for how to name\nthe files in this directory in order to use custom\nreference\
    \ files."
  type: File?
  inputBinding:
    prefix: --ref_dir
- id: in_out_tree
  doc: Name of final output tree.
  type: File?
  inputBinding:
    prefix: --out_tree
- id: in_processes
  doc: "Number of processes to run in parallel (default: 1).\nNote that this refers\
    \ to multithreading rather than\nmultiprocessing when running EPA-ng and GAPPA."
  type: long?
  inputBinding:
    prefix: --processes
- id: in_intermediate
  doc: "Output folder for intermediate files (will be deleted\notherwise)."
  type: Directory?
  inputBinding:
    prefix: --intermediate
- id: in_min_align
  doc: "Proportion of the total length of an input query\nsequence that must align\
    \ with reference sequences. Any\nsequences with lengths below this value after\
    \ making\nan alignment with reference sequences will be excluded\nfrom the placement\
    \ and all subsequent steps. (default:\n0.80)."
  type: long?
  inputBinding:
    prefix: --min_align
- id: in_chunk_size
  doc: "Number of query seqs to read in at once for EPA-ng\n(default: 5000)."
  type: long?
  inputBinding:
    prefix: --chunk_size
- id: in_verbose
  doc: "If specified, print out wrapped commands and other\ndetails to screen."
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_intermediate
  doc: "Output folder for intermediate files (will be deleted\notherwise)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_intermediate)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/picrust2:2.4.1--py_0
cwlVersion: v1.1
baseCommand:
- place_seqs.py
