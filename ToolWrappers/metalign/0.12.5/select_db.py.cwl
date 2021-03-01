class: CommandLineTool
id: select_db.py.cwl
inputs:
- id: in_c_mash_results
  doc: Give location of CMash query results if already done.
  type: string?
  inputBinding:
    prefix: --cmash_results
- id: in_cut_off
  doc: CMash cutoff value. Default is 0.01.
  type: double?
  inputBinding:
    prefix: --cutoff
- id: in_db
  doc: "Where to write subset database. Default:\ntemp_dir/cmashed_db.fna"
  type: string?
  inputBinding:
    prefix: --db
- id: in_db_dir
  doc: Directory with all organism files in the full
  type: Directory?
  inputBinding:
    prefix: --db_dir
- id: in_db_info_out
  doc: "Where to write subset db_info. Default:\ntemp_dir/subset_db_info.txt"
  type: string?
  inputBinding:
    prefix: --dbinfo_out
- id: in_input_type
  doc: "Type of input file (fastq/fasta). Default: try to\nauto-determine"
  type: string?
  inputBinding:
    prefix: --input_type
- id: in_keep_temp_files
  doc: Retain KMC files after this script finishes.
  type: boolean?
  inputBinding:
    prefix: --keep_temp_files
- id: in_strain_level
  doc: "Include all strains above cutoff. Default: 1 strain\nper species."
  type: boolean?
  inputBinding:
    prefix: --strain_level
- id: in_temp_dir
  doc: Directory to write temporary files to.
  type: Directory?
  inputBinding:
    prefix: --temp_dir
- id: in_threads
  doc: 'How many compute threads for KMC to use. Default: 4'
  type: long?
  inputBinding:
    prefix: --threads
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- select_db.py
