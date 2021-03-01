class: CommandLineTool
id: anvi_script_fix_homopolymer_indels.cwl
inputs:
- id: in_input_fast_a
  doc: "A FASTA file of sequences you wish to fix (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_reference_fast_a
  doc: 'A FASTA file for reference sequences (default: None)'
  type: File?
  inputBinding:
    prefix: --reference-fasta
- id: in_output_fast_a
  doc: 'Corrected FASTA file (default: None)'
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_min_homopolymer_length
  doc: "Minimum number of identical nucleotides next to each\nother PLUS THE GAP CHARACTER\
    \ to be considered a\nhomopolymer when these nucleotides are aligned to a\nregion\
    \ in the other sequnce that is all composed of\nthe same nucleotides. Confused?\
    \ Read on. The default\nis 3. So when this value is 2, the program would\nconsider\
    \ the following to match the definition of\nminimum homopolymer length to be considered\
    \ for\nfixing: (R)eference: 'AA-' and (Q)uery: 'AAA'. The\nsame would be true\
    \ for R: 'AA---' / Q: 'AAAAA' but not\nR: 'A-' / Q: 'AA' In contrast, when this\
    \ value is 3,\nthen the minimum that would work would be this: R:\n'AAA-', Q:\
    \ 'AAAA'. Obviously, you shouldn't go any\nlower than 2, but then why should you\
    \ listen to a\ncomputer?"
  type: long?
  inputBinding:
    prefix: --min-homopolymer-length
- id: in_verbose
  doc: "Be verbose, print more messages whenever possible.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_num_threads
  doc: "Maximum number of threads to use for multithreading\nwhenever possible. Very\
    \ conservatively, the default is\n1. It is a good idea to not exceed the number\
    \ of CPUs\n/ cores on your system. Plus, please be careful with\nthis option if\
    \ you are running your commands on a SGE\n--if you are clusterizing your runs,\
    \ and asking for\nmultiple threads to use, you may deplete your\nresources very\
    \ fast. (default: 1)"
  type: long?
  inputBinding:
    prefix: --num-threads
- id: in_test_run
  doc: 'Just do a test run and nothing more. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --test-run
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-fix-homopolymer-indels
