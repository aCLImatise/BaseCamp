class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/parse_sdrf_convert_maxquant.cwl
inputs:
- id: sd_rf
  doc: SDRF file
  type: string
  inputBinding:
    prefix: --sdrf
- id: fast_a_file_path
  doc: protein database file path,please use /
  type: string
  inputBinding:
    prefix: --fastafilepath
- id: match_between_runs
  doc: via matching between runs to boosts number of identifications
  type: string
  inputBinding:
    prefix: --matchbetweenruns
- id: peptide_fdr
  doc: posterior error probability calculation based on target-decoy search
  type: double
  inputBinding:
    prefix: --peptidefdr
- id: protein_fdr
  doc: protein score = product of peptide PEPs (one for each sequence)
  type: double
  inputBinding:
    prefix: --proteinfdr
- id: temp_folder
  doc: 'temporary folder: place on SSD (if possible) for faster search, please use
    /'
  type: string
  inputBinding:
    prefix: --tempfolder
- id: raw_folder
  doc: raw data folder,please use \
  type: string
  inputBinding:
    prefix: --raw_folder
- id: num_threads
  doc: each thread needs at least 2 GB of RAM,number of threads should be ≤ number
    of logical cores available (otherwise, MaxQuant can crash)
  type: long
  inputBinding:
    prefix: --numthreads
- id: output_one
  doc: parameters .xml file  output file path
  type: string
  inputBinding:
    prefix: --output1
- id: output_two
  doc: maxquant experimental design .txt file
  type: string
  inputBinding:
    prefix: --output2
outputs: []
cwlVersion: v1.1
baseCommand:
- parse_sdrf
- convert-maxquant
