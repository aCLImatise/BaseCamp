class: CommandLineTool
id: Binsanity_refine.cwl
inputs:
- id: in_specify_coverage_file
  doc: Specify a Coverage File
  type: File?
  inputBinding:
    prefix: -c
- id: in_specify_directory_containing
  doc: Specify directory containing your contigs
  type: Directory?
  inputBinding:
    prefix: -f
- id: in_specify_preference_default
  doc: "Specify a preference (default is -25)\nNote: decreasing the preference leads\
    \ to more lumping,\nincreasing will lead to more splitting. If your range\nof\
    \ coverages are low you will want to decrease the\npreference, if you have 10\
    \ or less replicates increasing\nthe preference could benefit you. For complex\
    \ datasets\nwith low abundance organisms a preference\nof -25 was found to be\
    \ optimal"
  type: long?
  inputBinding:
    prefix: -p
- id: in_specify_max_number
  doc: Specify a max number of iterations (default is 4000)
  type: long?
  inputBinding:
    prefix: -m
- id: in_specify_number_default
  doc: "Specify the convergence iteration number (default is 200)\ne.g Number of iterations\
    \ with no change in the number\nof estimated clusters that stops the convergence."
  type: long?
  inputBinding:
    prefix: -v
- id: in_km_er
  doc: "Specify a number for kmer calculation. Default is 4.\nTetramer frequencies\
    \ are recommended"
  type: long?
  inputBinding:
    prefix: -kmer
- id: in_specify_damping_factor
  doc: Specify a damping factor between 0.5 and 1, default is 0.9
  type: double?
  inputBinding:
    prefix: -d
- id: in_specify_fasta_file
  doc: Specify the fasta file containing contigs you want to cluster
  type: File?
  inputBinding:
    prefix: -l
- id: in_specify_contig_size
  doc: Specify the contig size cut-off (Default 1000 bp)
  type: long?
  inputBinding:
    prefix: -x
- id: in_give_name_directory
  doc: "Give a name to the directory BinSanity results will be output in\n[Default\
    \ is 'BINSANITY-REFINEMENT']"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_log
  doc: 'Specify an output name for the log file. [Default: binsanity-refine.log]'
  type: File?
  inputBinding:
    prefix: --log
- id: in_out_prefix
  doc: "Sepcify what prefix you want appended to final Bins {optional}\n"
  type: string?
  inputBinding:
    prefix: --outPrefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_give_name_directory
  doc: "Give a name to the directory BinSanity results will be output in\n[Default\
    \ is 'BINSANITY-REFINEMENT']"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_give_name_directory)
- id: out_log
  doc: 'Specify an output name for the log file. [Default: binsanity-refine.log]'
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- Binsanity-refine
