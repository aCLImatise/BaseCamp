class: CommandLineTool
id: metalign.py.cwl
inputs:
- id: reads
  doc: Path to reads file.
  type: string
  inputBinding:
    position: 0
- id: data
  doc: Path to data/ directory with the files from setup_data.sh
  type: string
  inputBinding:
    position: 1
- id: cut_off
  doc: CMash cutoff value. Default is 1/(log10(reads file bytes)**2).
  type: string
  inputBinding:
    prefix: --cutoff
- id: db_dir
  doc: Directory with all organism files in the full database.
  type: string
  inputBinding:
    prefix: --db_dir
- id: db_info_in
  doc: 'Location of db_info file. Default: data/db_info.txt'
  type: string
  inputBinding:
    prefix: --dbinfo_in
- id: keep_temp_files
  doc: Keep KMC files instead of deleting after this script finishes.
  type: boolean
  inputBinding:
    prefix: --keep_temp_files
- id: input_type
  doc: 'Type of input file (fastq/fasta). Default: try to auto-determine'
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
- id: no_quantify_unmapped
  doc: Do not factor in unmapped reads in abundance estimation.
  type: boolean
  inputBinding:
    prefix: --no_quantify_unmapped
- id: output
  doc: 'Output abundances file. Default: abundances.tsv'
  type: string
  inputBinding:
    prefix: --output
- id: pct_id
  doc: Minimum percent identity from reference to count a hit.
  type: string
  inputBinding:
    prefix: --pct_id
- id: precise
  doc: Run in precise mode. Overwrites --read_cutoff and --min_abundance to 100 and
    0.1.
  type: boolean
  inputBinding:
    prefix: --precise
- id: rank_renormalize
  doc: Renormalize abundances to 100 percent at each rank.
  type: boolean
  inputBinding:
    prefix: --rank_renormalize
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
- id: sensitive
  doc: Run in sensitive mode. Overwrites --cutoff value to 0.0.
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: strain_level
  doc: Use this flag to profile strains (off by default).
  type: boolean
  inputBinding:
    prefix: --strain_level
- id: temp_dir
  doc: Directory to write temporary files to.
  type: string
  inputBinding:
    prefix: --temp_dir
- id: threads
  doc: 'How many compute threads for Minimap2/KMC to use. Default: 4'
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
- metalign.py
