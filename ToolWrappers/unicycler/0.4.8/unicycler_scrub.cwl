class: CommandLineTool
id: unicycler_scrub.cwl
inputs:
- id: in_input
  doc: "These are the reads or assembly to be scrubbed (can\nbe FASTA or FASTQ format"
  type: string?
  inputBinding:
    prefix: --input
- id: in_out
  doc: "The scrubbed reads or assembly will be saved to this\nfile (will have the\
    \ same format as the --input file\nformat) or use \"none\" to not produce an output\
    \ file"
  type: File?
  inputBinding:
    prefix: --out
- id: in_reads
  doc: "These are the reads used to scrub --input (can be\nFASTA or FASTQ format)\
    \ (default: same file as\n--input)"
  type: File?
  inputBinding:
    prefix: --reads
- id: in_trim
  doc: "The aggressiveness with which the input will be\ntrimmed (0 to 100, where\
    \ 0 is no trimming and 100 is\nvery aggressive trimming) (default: 50)"
  type: long?
  inputBinding:
    prefix: --trim
- id: in_split
  doc: "The aggressiveness with which the input will be\nsplit (0 to 100, where 0\
    \ is no splitting and 100 is\nvery aggressive splitting) (default: 50)"
  type: long?
  inputBinding:
    prefix: --split
- id: in_min_split_size
  doc: "Parts of split sequences will only be outputted if\nthey are at least this\
    \ big (default: 1000)"
  type: long?
  inputBinding:
    prefix: --min_split_size
- id: in_discard_chimeras
  doc: "If used, chimeric sequences will be discarded\ninstead of split (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --discard_chimeras
- id: in_threads
  doc: 'Number of threads used (default: 8)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_keep_paf
  doc: "Save the alignments to file (makes repeated runs\nfaster because alignments\
    \ can be loaded from file)\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --keep_paf
- id: in_parameters
  doc: "Low-level parameters (for debugging use only)\n(default: )"
  type: string?
  inputBinding:
    prefix: --parameters
- id: in_verbosity
  doc: "Level of stdout information (default: 1)\n0 = no stdout, 1 = basic progress\
    \ indicators,\n2 = extra info, 3 = debugging info\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- unicycler_scrub
