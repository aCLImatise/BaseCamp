class: CommandLineTool
id: metalign.py.cwl
inputs:
- id: in_cut_off
  doc: CMash cutoff value. Default is 0.01.
  type: double?
  inputBinding:
    prefix: --cutoff
- id: in_db_dir
  doc: Directory with all organism files in the full
  type: Directory?
  inputBinding:
    prefix: --db_dir
- id: in_keep_temp_files
  doc: Retain KMC files after this script finishes.
  type: boolean?
  inputBinding:
    prefix: --keep_temp_files
- id: in_input_type
  doc: "Type of input file (fastq/fasta). Default: try to\nauto-determine"
  type: string?
  inputBinding:
    prefix: --input_type
- id: in_length_normalize
  doc: Normalize abundances by genome length.
  type: boolean?
  inputBinding:
    prefix: --length_normalize
- id: in_low_mem
  doc: Run in low memory mode, with inexact multimapped
  type: boolean?
  inputBinding:
    prefix: --low_mem
- id: in_no_quantify_unmapped
  doc: "Do not factor in unmapped reads in abundance\nestimation."
  type: boolean?
  inputBinding:
    prefix: --no_quantify_unmapped
- id: in_output
  doc: 'Output abundances file. Default: abundances.tsv'
  type: File?
  inputBinding:
    prefix: --output
- id: in_pct_id
  doc: Minimum percent identity from reference to count a
  type: string?
  inputBinding:
    prefix: --pct_id
- id: in_min_abundance
  doc: 100 and 0.1.
  type: double?
  inputBinding:
    prefix: --min_abundance
- id: in_rank_renormalize
  doc: "Renormalize abundances to 100 pct. at each rank, e.g\nif an organism has a\
    \ species but not genus label."
  type: boolean?
  inputBinding:
    prefix: --rank_renormalize
- id: in_read_cut_off
  doc: Number of reads to count an organism as present.
  type: long?
  inputBinding:
    prefix: --read_cutoff
- id: in_sample_id
  doc: Sample ID for output. Defaults to input file name(s).
  type: File?
  inputBinding:
    prefix: --sampleID
- id: in_sensitive
  doc: Run in sensitive mode. Sets --cutoff value to 0.0.
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_strain_level
  doc: Profile strains (off by default).
  type: boolean?
  inputBinding:
    prefix: --strain_level
- id: in_temp_dir
  doc: Directory to write temporary files to.
  type: Directory?
  inputBinding:
    prefix: --temp_dir
- id: in_threads
  doc: 'Number of compute threads for Minimap2/KMC. Default: 4'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: Print verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_reads
  doc: Path to reads file.
  type: string
  inputBinding:
    position: 0
- id: in_data
  doc: Path to data/ directory with the files from
  type: string
  inputBinding:
    position: 1
- id: in_setup_data_dots_h
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
- id: in_database_dot
  doc: --dbinfo_in DBINFO_IN
  type: string
  inputBinding:
    position: 3
- id: in_processing_dot
  doc: --min_abundance MIN_ABUNDANCE
  type: string
  inputBinding:
    position: 0
- id: in_hit_dot
  doc: --precise             Run in precise mode. Overwrites --read_cutoff and
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output abundances file. Default: abundances.tsv'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- metalign.py
