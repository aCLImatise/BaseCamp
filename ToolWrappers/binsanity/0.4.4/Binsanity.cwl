class: CommandLineTool
id: Binsanity.cwl
inputs:
- id: in_specify_coverage_file
  doc: Specify a Coverage File
  type: File
  inputBinding:
    prefix: -c
- id: in_specify_directorycontaining_contigs
  doc: "Specify directory\ncontaining your contigs"
  type: Directory
  inputBinding:
    prefix: -f
- id: in_specify_preference_default
  doc: "Specify a preference (default is -3)\nNote: decreasing the preference leads\
    \ to more lumping,\nincreasing will lead to more splitting. If your range\nof\
    \ coverages are low you will want to decrease the preference,\nif you have 10\
    \ or less replicates increasing the preference could\nbenefit you."
  type: long
  inputBinding:
    prefix: -p
- id: in_specify_max_number
  doc: Specify a max number of iterations [default is 2000]
  type: long
  inputBinding:
    prefix: -m
- id: in_specify_convergence_default
  doc: "Specify the convergence iteration number (default is 200)\ne.g Number of iterations\
    \ with no change in the number\nof estimated clusters that stops the convergence."
  type: long
  inputBinding:
    prefix: -v
- id: in_specify_damping_factor
  doc: Specify a damping factor between 0.5 and 1, default is 0.9
  type: double
  inputBinding:
    prefix: -d
- id: in_specify_fasta_file
  doc: Specify the fasta file containing contigs you want to cluster
  type: File
  inputBinding:
    prefix: -l
- id: in_specify_contig_size
  doc: Specify the contig size cut-off [Default 1000 bp]
  type: long
  inputBinding:
    prefix: -x
- id: in_give_name_directory
  doc: "Give a name to the directory BinSanity results will be output in\n[Default\
    \ is 'BINSANITY-RESULTS']"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_out_prefix
  doc: Sepcify what prefix you want appended to final Bins {optional}
  type: string
  inputBinding:
    prefix: --outPrefix
- id: in_log
  doc: specify a name for the log file [Default is 'binsanity-logfile.txt']
  type: File
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_give_name_directory
  doc: "Give a name to the directory BinSanity results will be output in\n[Default\
    \ is 'BINSANITY-RESULTS']"
  type: Directory
  outputBinding:
    glob: $(inputs.in_give_name_directory)
cwlVersion: v1.1
baseCommand:
- Binsanity
