class: CommandLineTool
id: anvi_script_compute_ani_for_fasta.cwl
inputs:
- id: in_fast_a_file
  doc: A FASTA-formatted input file
  type: File
  inputBinding:
    prefix: --fasta-file
- id: in_output_dir
  doc: Directory path for output files
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_pan_db
  doc: Anvi'o pan database
  type: string
  inputBinding:
    prefix: --pan-db
- id: in_num_threads
  doc: "Maximum number of threads to use for multithreading\nwhenever possible. Very\
    \ conservatively, the default is\n1. It is a good idea to not exceed the number\
    \ of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if\
    \ you are running your commands on a SGE\n--if you are clusterizing your runs,\
    \ and asking for\nmultiple threads to use, you may deplete your\nresources very\
    \ fast."
  type: long
  inputBinding:
    prefix: --num-threads
- id: in_log_file
  doc: File path to store debug/output messages.
  type: File
  inputBinding:
    prefix: --log-file
- id: in_method
  doc: "Method for pyANI. The default is ANIb. You must have\nthe necessary binary\
    \ in path for whichever method you\nchoose. According to the pyANI help for v0.2.7\
    \ at\nhttps://github.com/widdowquinn/pyani, the method\n'ANIm' uses MUMmer (NUCmer)\
    \ to align the input\nsequences. 'ANIb' uses BLASTN+ to align 1020nt\nfragments\
    \ of the input sequences. 'ANIblastall': uses\nthe legacy BLASTN to align 1020nt\
    \ fragments Finally,\n'TETRA': calculates tetranucleotide frequencies of\neach\
    \ input sequence"
  type: string
  inputBinding:
    prefix: --method
- id: in_distance
  doc: "The distance metric for the hierarchical clustering.\nThe default is \"euclidean\"\
    ."
  type: string
  inputBinding:
    prefix: --distance
- id: in_linkage
  doc: "The linkage method for the hierarchical clustering.\nThe default is \"ward\"\
    ."
  type: string
  inputBinding:
    prefix: --linkage
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit.\n"
  type: boolean
  inputBinding:
    prefix: --just-do-it
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory path for output files
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_log_file
  doc: File path to store debug/output messages.
  type: File
  outputBinding:
    glob: $(inputs.in_log_file)
cwlVersion: v1.1
baseCommand:
- anvi-script-compute-ani-for-fasta
