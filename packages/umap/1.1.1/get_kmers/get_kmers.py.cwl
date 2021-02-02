class: CommandLineTool
id: get_kmers.py.cwl
inputs:
- id: in_km_er
  doc: "The software would infer it based on the name of the\n'out_dir'. If it is\
    \ set and contradicts the 'out_dir', a\nsubfolder under out_dir will be created\
    \ named 'kmer' and\nout_dir will be changed to that."
  type: string
  inputBinding:
    prefix: --kmer
- id: in_job_id
  doc: "If not submitted in job array, would require this parameter\nto be set. (1-based\
    \ index)"
  type: long
  inputBinding:
    prefix: --job_id
- id: in_var_id
  doc: "The variable name that the script would use for identifying\nthe job id. By\
    \ default: SGE_TASK_ID.\n"
  type: string
  inputBinding:
    prefix: --var_id
- id: in_chrom_size_path
  doc: "Path to 2 column tsv file where first column is chromosome\nname and second\
    \ column is chromosome size"
  type: string
  inputBinding:
    position: 0
- id: in_out_dir
  doc: "Path to the directory for creating\n<chromosome>.<Megabase>.<kmer>.kmer.gz\
    \ files"
  type: string
  inputBinding:
    position: 1
- id: in_chr_dir
  doc: Path to directory with <chromosome>.fasta files.
  type: string
  inputBinding:
    position: 2
- id: in_idx_path
  doc: "Path to the 4 column file with the following columns: Index\n| Chromosome\
    \ | Start | End. This file will be used for\nidentifying the chunk of the chromosome."
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_kmers.py
