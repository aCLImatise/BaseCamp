class: CommandLineTool
id: sampling_utils_rand_seq.cwl
inputs:
- id: in_verbose
  doc: "-n, --num-seqs INTEGER       Number of sequences to generate  [default:\n\
    1000]\n-gc, --gc-content FLOAT      GC content (defaults to .5 out of 1)  [default:\n\
    0.5]\n-i, --infer-params FILENAME  Infer parameters GC content and Quality model\n\
    from file\n-r, --coding-prop FLOAT      Proportion of coding sequences  [default:\
    \ 0.0]\n-l, --length INTEGER         Sequence length  [default: 150]\n-d, --const-model\
    \            Use a model with constant qualities + noise\n-x, --dist-loc FLOAT\
    \         Use as the starting point quality  [default:\n30.0]\n-q, --fastq   \
    \               The output file is a FastQ file\n-m, --save-model FILENAME   \
    \ Save inferred qualities model to a pickle file\n-a, --read-model FILENAME  \
    \  Load qualities model from a pickle file\n--progress                   Shows\
    \ Progress Bar\n--help                       Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sampling-utils
- rand_seq
