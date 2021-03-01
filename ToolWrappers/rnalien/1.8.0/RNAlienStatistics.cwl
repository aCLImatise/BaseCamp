class: CommandLineTool
id: RNAlienStatistics.cwl
inputs:
- id: in_alien_covariance_model_path
  doc: Path to alienCovarianceModelPath
  type: File?
  inputBinding:
    prefix: --aliencovariancemodelpath
- id: in_alien_rna_z_path
  doc: Path to alienRNAzResult
  type: File?
  inputBinding:
    prefix: --alienrnazpath
- id: in_alien_rna_code_path
  doc: Path to alienRNAcodeResult
  type: File?
  inputBinding:
    prefix: --alienrnacodepath
- id: in_alien_cm_stat_path
  doc: Path to aliencmstatResult
  type: File?
  inputBinding:
    prefix: --aliencmstatpath
- id: in_rf_am_covariance_model_path
  doc: Path to rfamCovarianceModelPath
  type: File?
  inputBinding:
    prefix: --rfamcovariancemodelpath
- id: in_rf_am_fast_a_file_path
  doc: Path to rfamFastaFile
  type: File?
  inputBinding:
    prefix: --rfamfastafilepath
- id: in_alien_fast_a_file_path
  doc: Path to alienFastaFile
  type: File?
  inputBinding:
    prefix: --alienfastafilepath
- id: in_rf_am_model_name
  doc: Rfam model name
  type: string?
  inputBinding:
    prefix: --rfammodelname
- id: in_rf_am_model_id
  doc: Rfam model id
  type: string?
  inputBinding:
    prefix: --rfammodelid
- id: in_rf_am_threshold
  doc: "Bitscore threshold for Rfam model hits\non Alien fasta, default 20"
  type: long?
  inputBinding:
    prefix: --rfamthreshold
- id: in_alien_threshold
  doc: "Bitscore threshold for RNAlien model\nhits on Rfam fasta, default 20"
  type: long?
  inputBinding:
    prefix: --alienthreshold
- id: in_database_size
  doc: "Cmsearch database size in mega bases.\ndefault not set"
  type: long?
  inputBinding:
    prefix: --databasesize
- id: in_output_directory_path
  doc: Path to output directory
  type: File?
  inputBinding:
    prefix: --outputdirectorypath
- id: in_benchmark_index
  doc: Index used to identify sRNA tagged RNA
  type: long?
  inputBinding:
    prefix: --benchmarkindex
- id: in_link_scores
  doc: Triggers computation of linkscores via
  type: boolean?
  inputBinding:
    prefix: --linkscores
- id: in_verbose
  doc: Loud verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Quiet verbosity
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_families
  doc: -s --thresholdselection=ITEM        Selection method, (bitscore, evalue),
  type: string
  inputBinding:
    position: 0
- id: in_cm_compare
  doc: -c --threads=INT                    Number of available cpu slots/cores,
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_path
  doc: Path to output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output_directory_path)
hints: []
cwlVersion: v1.1
baseCommand:
- RNAlienStatistics
