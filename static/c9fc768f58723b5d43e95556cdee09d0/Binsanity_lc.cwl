class: CommandLineTool
id: Binsanity_lc.cwl
inputs:
- id: in_specify_coverage_file
  doc: Specify a Coverage File
  type: File
  inputBinding:
    prefix: -c
- id: in_specify_directory_containing
  doc: Specify directory containing Fasta File to be clustered
  type: File
  inputBinding:
    prefix: -f
- id: in_specify_preference_note
  doc: "Specify a preference [Default: -3]\nNote: decreasing the preference leads\
    \ to more lumping,\nincreasing will lead to more splitting. If your range\nof\
    \ coverages are low you will want to decrease the\npreference, if you have 10\
    \ or less replicates increasing\nthe preference could benefit you."
  type: long
  inputBinding:
    prefix: -p
- id: in_specify_max_number
  doc: 'Specify a max number of iterations [Default: 4000]'
  type: long
  inputBinding:
    prefix: -m
- id: in_specify_convergence_number
  doc: "Specify the convergence iteration number [Default:400]\ne.g Number of iterations\
    \ with no change in the number\nof estimated clusters that stops the convergence."
  type: long
  inputBinding:
    prefix: -v
- id: in_specify_damping_factor
  doc: 'Specify a damping factor between 0.5 and 1 [Default: 0.95]'
  type: double
  inputBinding:
    prefix: -d
- id: in_name_specify_file
  doc: Name     Specify the fasta file containing contigs you want to cluster
  type: File
  inputBinding:
    prefix: -l
- id: in_specify_contig_size
  doc: Specify the contig size cut-off [Default:1000 bp]
  type: long
  inputBinding:
    prefix: -x
- id: in_directory_give_name
  doc: "Directory   Give a name to the directory BinSanity results will be output\
    \ in\n[Default:'BINSANITY-RESULTS']"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_check_m_threads
  doc: 'Indicate how many threads you want dedicated to the subprocess CheckM [Default:
    1]'
  type: long
  inputBinding:
    prefix: --checkm_threads
- id: in_k_mean_threads
  doc: "Indicate how many threads you want dedicated to kmeans clustering\n[Default:\
    \ 1]"
  type: long
  inputBinding:
    prefix: --kmean_threads
- id: in_km_er
  doc: 'Indicate a number for the kmer calculation [Default: 4]'
  type: long
  inputBinding:
    prefix: --kmer
- id: in_refine_preference
  doc: 'Specify a preference for refinement [Default: -25]'
  type: boolean
  inputBinding:
    prefix: --refine-preference
- id: in_indicate_number_initial
  doc: Indicate a number of initial clusters for kmean [Default:100]
  type: long
  inputBinding:
    prefix: -C
- id: in_prefix
  doc: Specify a prefix to append to the start of all directories generated during
    Binsanity
  type: string
  inputBinding:
    prefix: --Prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_give_name
  doc: "Directory   Give a name to the directory BinSanity results will be output\
    \ in\n[Default:'BINSANITY-RESULTS']"
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_give_name)
cwlVersion: v1.1
baseCommand:
- Binsanity-lc
