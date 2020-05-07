class: CommandLineTool
id: anvi_script_compute_ani_for_fasta.cwl
inputs:
- id: fast_a_file
  doc: A FASTA-formatted input file
  type: string
  inputBinding:
    prefix: --fasta-file
- id: output_dir
  doc: Directory path for output files
  type: string
  inputBinding:
    prefix: --output-dir
- id: pan_db
  doc: Anvi'o pan database
  type: string
  inputBinding:
    prefix: --pan-db
- id: num_threads
  doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  type: string
  inputBinding:
    prefix: --num-threads
- id: log_file
  doc: File path to store debug/output messages.
  type: File
  inputBinding:
    prefix: --log-file
- id: method
  doc: "Method for pyANI. The default is ANIb. You must have the necessary binary\
    \ in path for whichever method you choose. According to the pyANI help for v0.2.7\
    \ at https://github.com/widdowquinn/pyani, the method 'ANIm' uses MUMmer (NUCmer)\
    \ to align the input sequences. 'ANIb' uses BLASTN+ to align 1020nt fragments\
    \ of the input sequences. 'ANIblastall': uses the legacy BLASTN to align 1020nt\
    \ fragments Finally, 'TETRA': calculates tetranucleotide frequencies of each input\
    \ sequence"
  type: string
  inputBinding:
    prefix: --method
- id: distance
  doc: The distance metric for the hierarchical clustering. The default is "euclidean".
  type: string
  inputBinding:
    prefix: --distance
- id: linkage
  doc: The linkage method for the hierarchical clustering. The default is "ward".
  type: string
  inputBinding:
    prefix: --linkage
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-compute-ani-for-fasta
