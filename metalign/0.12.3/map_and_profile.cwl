class: CommandLineTool
id: map_and_profile.py.cwl
inputs:
- id: in_files
  doc: sam or reads file(s) (space-delimited if multiple). Required.
  type: string
  inputBinding:
    position: 0
- id: data
  doc: Path to data/ directory with the files from setup_data.sh
  type: string
  inputBinding:
    position: 1
- id: db
  doc: Path to database from select_db.py. Required if read files given
  type: string
  inputBinding:
    prefix: --db
- id: db_info
  doc: 'Location of db_info file. Default: data/db_info.txt'
  type: string
  inputBinding:
    prefix: --dbinfo
- id: input_type
  doc: 'Type of input file (fastq/fasta/sam). Default: try to automatically determine'
  type: string
  inputBinding:
    prefix: --input_type
- id: length_normalize
  doc: Normalize abundances by genome length.
  type: boolean
  inputBinding:
    prefix: --length_normalize
- id: low_mem
  doc: Run in low memory mode, with inexact multimapped processing.
  type: boolean
  inputBinding:
    prefix: --low_mem
- id: min_abundance
  doc: Minimum abundance for a taxa to be included in the results.
  type: long
  inputBinding:
    prefix: --min_abundance
- id: rank_renormalize
  doc: Renormalize abundances to 100 percent at each rank, for instance if an organism
    has a species but not genus label.
  type: boolean
  inputBinding:
    prefix: --rank_renormalize
- id: output
  doc: 'Output abundances file. Default: abundances.txt'
  type: string
  inputBinding:
    prefix: --output
- id: pct_id
  doc: Minimum percent identity from reference to count a hit.
  type: string
  inputBinding:
    prefix: --pct_id
- id: no_quantify_unmapped
  doc: Do not factor in unmapped reads in abundance estimation.
  type: boolean
  inputBinding:
    prefix: --no_quantify_unmapped
- id: read_cut_off
  doc: Number of reads to count an organism as present.
  type: string
  inputBinding:
    prefix: --read_cutoff
- id: sample_id
  doc: Sample ID for output. Defaults to input file name(s).
  type: string
  inputBinding:
    prefix: --sampleID
- id: threads
  doc: 'How many compute threads for Minimap2 to use. Default: 4'
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: Print verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- map_and_profile.py
