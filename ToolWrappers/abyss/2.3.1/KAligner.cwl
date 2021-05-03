class: CommandLineTool
id: KAligner.cwl
inputs:
- id: in_kmer_size_alignment
  doc: k-mer size and minimum alignment length
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_section
  doc: "/N     split the target into N sections and align\nreads to section S [1/1]"
  type: long?
  inputBinding:
    prefix: --section
- id: in_ignore_multimap
  doc: "duplicate k-mer in the target\n[default]"
  type: string?
  inputBinding:
    prefix: --ignore-multimap
- id: in_multimap
  doc: allow duplicate k-mer in the target
  type: boolean?
  inputBinding:
    prefix: --multimap
- id: in_no_multimap
  doc: disallow duplicate k-mer in the target
  type: boolean?
  inputBinding:
    prefix: --no-multimap
- id: in_threads
  doc: "use N threads [2] up to one per query file\nor if N is 0 use one thread per\
    \ query file"
  type: File?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_no_sam
  doc: output the results in KAligner format
  type: boolean?
  inputBinding:
    prefix: --no-sam
- id: in_sam
  doc: output the results in SAM format
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_seq
  doc: print the sequence with the alignments
  type: boolean?
  inputBinding:
    prefix: --seq
- id: in_var_10
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.3.1--hd403d74_0
cwlVersion: v1.1
baseCommand:
- KAligner
