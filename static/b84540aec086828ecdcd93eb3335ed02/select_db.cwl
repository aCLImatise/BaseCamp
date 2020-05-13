class: CommandLineTool
id: select_db.py.cwl
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
- id: c_mash_results
  doc: Can specify location of CMash query results if already done.
  type: string
  inputBinding:
    prefix: --cmash_results
- id: cut_off
  doc: CMash cutoff value. Default is 1/(log10(reads file bytes)**2).
  type: string
  inputBinding:
    prefix: --cutoff
- id: db
  doc: 'Where to write subset database. Default: temp_dir/cmashed_db.fna'
  type: string
  inputBinding:
    prefix: --db
- id: db_dir
  doc: Directory with all organism files in the full database.
  type: string
  inputBinding:
    prefix: --db_dir
- id: db_info_in
  doc: Specify location of db_info file. Default is data/db_info.txt
  type: string
  inputBinding:
    prefix: --dbinfo_in
- id: db_info_out
  doc: 'Where to write subset db_info. Default: temp_dir/subset_db_info.txt'
  type: string
  inputBinding:
    prefix: --dbinfo_out
- id: input_type
  doc: 'Type of input file (fastq/fasta). Default: try to auto-determine'
  type: string
  inputBinding:
    prefix: --input_type
- id: keep_temp_files
  doc: Keep KMC files instead of deleting after this script finishes.
  type: boolean
  inputBinding:
    prefix: --keep_temp_files
- id: strain_level
  doc: 'Include all strains above cutoff. Default: 1 strain per species.'
  type: boolean
  inputBinding:
    prefix: --strain_level
- id: temp_dir
  doc: Directory to write temporary files to.
  type: string
  inputBinding:
    prefix: --temp_dir
- id: threads
  doc: 'How many compute threads for KMC to use. Default: 4'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- select_db.py
