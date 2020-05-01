#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-compute-ani-for-fasta
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-compute-ani-for-fasta
inputs:
- doc: A FASTA-formatted input file
  id: fast_a_file
  inputBinding:
    prefix: --fasta-file
  type: string
- doc: Directory path for output files
  id: output_dir
  inputBinding:
    prefix: --output-dir
  type: string
- doc: Anvi'o pan database
  id: pan_db
  inputBinding:
    prefix: --pan-db
  type: string
- doc: Maximum number of threads to use for multithreading whenever possible. Very
    conservatively, the default is 1. It is a good idea to not exceed the number of
    CPUs / cores on your system. Plus, please be careful with this option if you are
    running your commands on a SGE --if you are clusterizing your runs, and asking
    for multiple threads to use, you may deplete your resources very fast.
  id: num_threads
  inputBinding:
    prefix: --num-threads
  type: string
- doc: File path to store debug/output messages.
  id: log_file
  inputBinding:
    prefix: --log-file
  type: File
- doc: "Method for pyANI. The default is ANIb. You must have the necessary binary\
    \ in path for whichever method you choose. According to the pyANI help for v0.2.7\
    \ at https://github.com/widdowquinn/pyani, the method 'ANIm' uses MUMmer (NUCmer)\
    \ to align the input sequences. 'ANIb' uses BLASTN+ to align 1020nt fragments\
    \ of the input sequences. 'ANIblastall': uses the legacy BLASTN to align 1020nt\
    \ fragments Finally, 'TETRA': calculates tetranucleotide frequencies of each input\
    \ sequence"
  id: method
  inputBinding:
    prefix: --method
  type: string
- doc: The distance metric for the hierarchical clustering. The default is "euclidean".
  id: distance
  inputBinding:
    prefix: --distance
  type: string
- doc: The linkage method for the hierarchical clustering. The default is "ward".
  id: linkage
  inputBinding:
    prefix: --linkage
  type: string
- doc: Don't bother me with questions or warnings, just do it.
  id: just_do_it
  inputBinding:
    prefix: --just-do-it
  type: boolean
