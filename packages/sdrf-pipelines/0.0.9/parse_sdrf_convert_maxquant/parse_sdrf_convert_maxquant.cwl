class: CommandLineTool
id: parse_sdrf_convert_maxquant.cwl
inputs:
- id: in_sd_rf
  doc: SDRF file
  type: File
  inputBinding:
    prefix: --sdrf
- id: in_fast_a_file_path
  doc: protein database file path,please use /
  type: File
  inputBinding:
    prefix: --fastafilepath
- id: in_match_between_runs
  doc: via matching between runs to boosts number of
  type: long
  inputBinding:
    prefix: --matchbetweenruns
- id: in_protein_fdr
  doc: "protein score = product of peptide PEPs (one\nfor each sequence)"
  type: double
  inputBinding:
    prefix: --proteinfdr
- id: in_temp_folder
  doc: "temporary folder: place on SSD (if possible)\nfor faster search, please use\
    \ /"
  type: Directory
  inputBinding:
    prefix: --tempfolder
- id: in_raw_folder
  doc: raw data folder,please use \
  type: Directory
  inputBinding:
    prefix: --raw_folder
- id: in_num_threads
  doc: "each thread needs at least 2 GB of RAM,number\nof threads should be ≤ number\
    \ of logical cores\navailable (otherwise, MaxQuant can crash)"
  type: long
  inputBinding:
    prefix: --numthreads
- id: in_output_one
  doc: parameters .xml file  output file path
  type: File
  inputBinding:
    prefix: --output1
- id: in_output_two
  doc: maxquant experimental design .txt file
  type: long
  inputBinding:
    prefix: --output2
- id: in_identifications
  doc: -pef, --peptidefdr FLOAT     posterior error probability calculation based
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_one
  doc: parameters .xml file  output file path
  type: File
  outputBinding:
    glob: $(inputs.in_output_one)
cwlVersion: v1.1
baseCommand:
- parse_sdrf
- convert-maxquant
