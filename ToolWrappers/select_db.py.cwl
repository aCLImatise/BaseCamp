class: CommandLineTool
id: select_db.py.cwl
inputs:
- id: in_c_mash_results
  doc: Give location of CMash query results if already done.
  type: string
  inputBinding:
    prefix: --cmash_results
- id: in_cut_off
  doc: CMash cutoff value. Default is 0.01.
  type: double
  inputBinding:
    prefix: --cutoff
- id: in_db
  doc: 'Where to write subset database. Default:'
  type: string
  inputBinding:
    prefix: --db
- id: in_strain_level
  doc: "Include all strains above cutoff. Default: 1 strain\nper species."
  type: boolean
  inputBinding:
    prefix: --strain_level
- id: in_temp_dir
  doc: Directory to write temporary files to.
  type: Directory
  inputBinding:
    prefix: --temp_dir
- id: in_threads
  doc: 'How many compute threads for KMC to use. Default: 4'
  type: long
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
- id: in_temp_dir_slash_c_mashed_db_dot_fna
  doc: --db_dir DB_DIR       Directory with all organism files in the full
  type: string
  inputBinding:
    position: 3
- id: in_database_dot
  doc: --dbinfo_in DBINFO_IN
  type: string
  inputBinding:
    position: 4
- id: in_data_slash_db_info_dot_txt
  doc: --dbinfo_out DBINFO_OUT
  type: string
  inputBinding:
    position: 0
- id: in_temp_dir_slash_subset_db_info_dot_txt
  doc: --input_type {fastq,fasta,AUTO}
  type: string
  inputBinding:
    position: 0
- id: in_auto_determine
  doc: --keep_temp_files     Retain KMC files after this script finishes.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- select_db.py
