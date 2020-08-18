class: CommandLineTool
id: ../../../Binsanity.cwl
inputs:
- id: specify_coverage_file
  doc: Specify a Coverage File
  type: string
  inputBinding:
    prefix: -c
- id: specify_directory_containing
  doc: Specify directory containing your contigs
  type: string
  inputBinding:
    prefix: -f
- id: specify_preference_default
  doc: 'Specify a preference (default is -3) Note: decreasing the preference leads
    to more lumping, increasing will lead to more splitting. If your range of coverages
    are low you will want to decrease the preference, if you have 10 or less replicates
    increasing the preference could benefit you.'
  type: string
  inputBinding:
    prefix: -p
- id: specify_max_number
  doc: Specify a max number of iterations [default is 2000]
  type: long
  inputBinding:
    prefix: -m
- id: specify_convergence_default
  doc: Specify the convergence iteration number (default is 200) e.g Number of iterations
    with no change in the number of estimated clusters that stops the convergence.
  type: string
  inputBinding:
    prefix: -v
- id: specify_damping_factor
  doc: Specify a damping factor between 0.5 and 1, default is 0.9
  type: string
  inputBinding:
    prefix: -d
- id: specify_fasta_file
  doc: Specify the fasta file containing contigs you want to cluster
  type: string
  inputBinding:
    prefix: -l
- id: specify_contig_size
  doc: Specify the contig size cut-off [Default 1000 bp]
  type: string
  inputBinding:
    prefix: -x
- id: give_name_directory
  doc: Give a name to the directory BinSanity results will be output in [Default is
    'BINSANITY-RESULTS']
  type: string
  inputBinding:
    prefix: -o
- id: out_prefix
  doc: Sepcify what prefix you want appended to final Bins {optional}
  type: string
  inputBinding:
    prefix: --outPrefix
- id: log
  doc: specify a name for the log file [Default is 'binsanity-logfile.txt']
  type: string
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- Binsanity
