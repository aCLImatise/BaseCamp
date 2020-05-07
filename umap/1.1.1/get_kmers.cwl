class: CommandLineTool
id: get_kmers.py.cwl
inputs:
- id: chrom_size_path
  doc: Path to 2 column tsv file where first column is chromosome name and second
    column is chromosome size
  type: string
  inputBinding:
    position: 0
- id: out_dir
  doc: Path to the directory for creating <chromosome>.<Megabase>.<kmer>.kmer.gz files
  type: string
  inputBinding:
    position: 1
- id: chr_dir
  doc: Path to directory with <chromosome>.fasta files.
  type: string
  inputBinding:
    position: 2
- id: idx_path
  doc: 'Path to the 4 column file with the following columns: Index | Chromosome |
    Start | End. This file will be used for identifying the chunk of the chromosome.'
  type: string
  inputBinding:
    position: 3
- id: km_er
  doc: The software would infer it based on the name of the 'out_dir'. If it is set
    and contradicts the 'out_dir', a subfolder under out_dir will be created named
    'kmer' and out_dir will be changed to that.
  type: string
  inputBinding:
    prefix: --kmer
- id: job_id
  doc: If not submitted in job array, would require this parameter to be set. (1-based
    index)
  type: string
  inputBinding:
    prefix: --job_id
- id: var_id
  doc: 'The variable name that the script would use for identifying the job id. By
    default: SGE_TASK_ID.'
  type: string
  inputBinding:
    prefix: --var_id
outputs: []
cwlVersion: v1.1
baseCommand:
- get_kmers.py
