class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pvacseq_run.cwl
inputs:
- id: epitope_length
  doc: Length of subpeptides (neoepitopes) to predict. Multiple epitope lengths can
    be specified using a comma-separated list. Typical epitope lengths vary between
    8-11. Required for Class I prediction algorithms
  type: string
  inputBinding:
    prefix: --epitope-length
- id: peptide_sequence_length
  doc: 'Length of the peptide sequence to use when creating the FASTA. Default: 21'
  type: string
  inputBinding:
    prefix: --peptide-sequence-length
- id: ie_db_install_directory
  doc: Directory that contains the local installation of IEDB MHC I and/or MHC II
  type: string
  inputBinding:
    prefix: --iedb-install-directory
- id: additional_input_file_list
  doc: yaml file of additional files to be used as inputs, e.g. cufflinks output files.
    For an example of this yaml file run `pvacseq config_files additional_input_file_list`.
  type: string
  inputBinding:
    prefix: --additional-input-file-list
- id: net_chop_method
  doc: NetChop prediction method to use ("cterm" for C term 3.0, "20s" for 20S 3.0).
  type: string
  inputBinding:
    prefix: --net-chop-method
- id: net_mhc_stab
  doc: Run NetMHCStabPan after all filtering and add stability predictions to predicted
    epitopes
  type: boolean
  inputBinding:
    prefix: --netmhc-stab
- id: top_result_per_mutation
  doc: 'Output only the top scoring result for each allele- peptide length combination
    for each variant. Default: False'
  type: boolean
  inputBinding:
    prefix: --top-result-per-mutation
- id: top_score_metric
  doc: 'The ic50 scoring metric to use when filtering epitopes by binding-threshold
    or minimum fold change. lowest: Best MT Score/Corresponding Fold Change - lowest
    MT ic50 binding score/corresponding fold change of all chosen prediction methods.
    median: Median MT Score/Median Fold Change - median MT ic50 binding score/fold
    change of all chosen prediction methods. Default: median'
  type: string
  inputBinding:
    prefix: --top-score-metric
- id: binding_threshold
  doc: 'Report only epitopes where the mutant allele has ic50 binding scores below
    this value. Default: 500'
  type: string
  inputBinding:
    prefix: --binding-threshold
- id: minimum_fold_change
  doc: 'Minimum fold change between mutant binding score and wild-type score. The
    default is 0, which filters no results, but 1 is often a sensible choice (requiring
    that binding is better to the MT than WT). Default: 0'
  type: long
  inputBinding:
    prefix: --minimum-fold-change
- id: normal_cov
  doc: 'Normal Coverage Cutoff. Sites above this cutoff will be considered. Default:
    5'
  type: string
  inputBinding:
    prefix: --normal-cov
- id: t_dna_cov
  doc: 'Tumor DNA Coverage Cutoff. Sites above this cutoff will be considered. Default:
    10'
  type: string
  inputBinding:
    prefix: --tdna-cov
- id: trna_cov
  doc: 'Tumor RNA Coverage Cutoff. Sites above this cutoff will be considered. Default:
    10'
  type: string
  inputBinding:
    prefix: --trna-cov
- id: normal_vaf
  doc: 'Normal VAF Cutoff. Sites BELOW this cutoff in normal will be considered. Default:
    2'
  type: string
  inputBinding:
    prefix: --normal-vaf
- id: t_dna_vaf
  doc: 'Tumor DNA VAF Cutoff. Sites above this cutoff will be considered. Default:
    40'
  type: string
  inputBinding:
    prefix: --tdna-vaf
- id: trna_vaf
  doc: 'Tumor RNA VAF Cutoff. Sites above this cutoff will be considered. Default:
    40'
  type: string
  inputBinding:
    prefix: --trna-vaf
- id: expn_val
  doc: 'Gene and Transcript Expression cutoff. Sites above this cutoff will be considered.
    Default: 1'
  type: string
  inputBinding:
    prefix: --expn-val
- id: net_chop_threshold
  doc: 'NetChop prediction threshold. Default: 0.5'
  type: string
  inputBinding:
    prefix: --net-chop-threshold
- id: additional_report_columns
  doc: Additional columns to output in the final report
  type: string
  inputBinding:
    prefix: --additional-report-columns
- id: fast_a_size
  doc: Number of fasta entries per IEDB request. For some resource-intensive prediction
    algorithms like Pickpocket and NetMHCpan it might be helpful to reduce this number.
    Needs to be an even number.
  type: string
  inputBinding:
    prefix: --fasta-size
- id: ie_db_retries
  doc: 'Number of retries when making requests to the IEDB RESTful web interface.
    Must be less than or equal to 100.Default: 5'
  type: string
  inputBinding:
    prefix: --iedb-retries
- id: downstream_sequence_length
  doc: "Cap to limit the downstream sequence length for frameshifts when creating\
    \ the fasta file. Use 'full' to include the full downstream sequence. Default:\
    \ 1000"
  type: string
  inputBinding:
    prefix: --downstream-sequence-length
- id: keep_tmp_files
  doc: Keep intermediate output files. This migt be useful for debugging purposes.
  type: boolean
  inputBinding:
    prefix: --keep-tmp-files
- id: output_dir
  doc: The directory for writing all result files
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pvacseq
- run
