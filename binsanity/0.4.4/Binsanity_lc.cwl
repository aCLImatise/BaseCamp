class: CommandLineTool
id: ../../../Binsanity_lc.cwl
inputs:
- id: specify_coverage_file
  doc: Specify a Coverage File
  type: string
  inputBinding:
    prefix: -c
- id: specify_directory_containing
  doc: Specify directory containing Fasta File to be clustered
  type: string
  inputBinding:
    prefix: -f
- id: specify_preference_note
  doc: 'Specify a preference [Default: -3] Note: decreasing the preference leads to
    more lumping,  increasing will lead to more splitting. If your range of coverages
    are low you will want to decrease the preference, if you have 10 or less replicates
    increasing the preference could benefit you.'
  type: string
  inputBinding:
    prefix: -p
- id: specify_max_number
  doc: 'Specify a max number of iterations [Default: 4000]'
  type: long
  inputBinding:
    prefix: -m
- id: specify_iteration_number
  doc: Specify the convergence iteration number [Default:400] e.g Number of iterations
    with no change in the number  of estimated clusters that stops the convergence.
  type: string
  inputBinding:
    prefix: -v
- id: specify_damping_factor
  doc: 'Specify a damping factor between 0.5 and 1 [Default: 0.95]'
  type: string
  inputBinding:
    prefix: -d
- id: name_specify_file
  doc: Name     Specify the fasta file containing contigs you want to cluster
  type: string
  inputBinding:
    prefix: -l
- id: specify_contig_size
  doc: Specify the contig size cut-off [Default:1000 bp]
  type: long
  inputBinding:
    prefix: -x
- id: directory_give_name
  doc: Directory   Give a name to the directory BinSanity results will be output in  [Default:'BINSANITY-RESULTS']
  type: string
  inputBinding:
    prefix: -o
- id: check_m_threads
  doc: 'Indicate how many threads you want dedicated to the subprocess CheckM [Default:
    1]'
  type: string
  inputBinding:
    prefix: --checkm_threads
- id: k_mean_threads
  doc: 'Indicate how many threads you want dedicated to kmeans clustering [Default:
    1]'
  type: string
  inputBinding:
    prefix: --kmean_threads
- id: km_er
  doc: 'Indicate a number for the kmer calculation [Default: 4]'
  type: string
  inputBinding:
    prefix: --kmer
- id: refine_preference
  doc: 'Specify a preference for refinement [Default: -25]'
  type: boolean
  inputBinding:
    prefix: --refine-preference
- id: indicate_number_initial
  doc: Indicate a number of initial clusters for kmean [Default:100]
  type: string
  inputBinding:
    prefix: -C
- id: prefix
  doc: Specify a prefix to append to the start of all directories generated during
    Binsanity
  type: string
  inputBinding:
    prefix: --Prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- Binsanity-lc
