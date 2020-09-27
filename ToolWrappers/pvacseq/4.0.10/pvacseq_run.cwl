class: CommandLineTool
id: pvacseq_run.cwl
inputs:
- id: in_epitope_length
  doc: "Length of subpeptides (neoepitopes) to predict.\nMultiple epitope lengths\
    \ can be specified using a\ncomma-separated list. Typical epitope lengths vary\n\
    between 8-11. Required for Class I prediction\nalgorithms"
  type: long
  inputBinding:
    prefix: --epitope-length
- id: in_peptide_sequence_length
  doc: "Length of the peptide sequence to use when creating\nthe FASTA. Default: 21"
  type: long
  inputBinding:
    prefix: --peptide-sequence-length
- id: in_ie_db_install_directory
  doc: "Directory that contains the local installation of IEDB\nMHC I and/or MHC II"
  type: Directory
  inputBinding:
    prefix: --iedb-install-directory
- id: in_additional_input_file_list
  doc: "yaml file of additional files to be used as inputs,\ne.g. cufflinks output\
    \ files. For an example of this\nyaml file run `pvacseq config_files\nadditional_input_file_list`."
  type: File
  inputBinding:
    prefix: --additional-input-file-list
- id: in_net_chop_method
  doc: "NetChop prediction method to use (\"cterm\" for C term\n3.0, \"20s\" for 20S\
    \ 3.0)."
  type: string
  inputBinding:
    prefix: --net-chop-method
- id: in_net_mhc_stab
  doc: "Run NetMHCStabPan after all filtering and add\nstability predictions to predicted\
    \ epitopes"
  type: boolean
  inputBinding:
    prefix: --netmhc-stab
- id: in_top_result_per_mutation
  doc: "Output only the top scoring result for each allele-\npeptide length combination\
    \ for each variant. Default:\nFalse"
  type: boolean
  inputBinding:
    prefix: --top-result-per-mutation
- id: in_top_score_metric
  doc: "The ic50 scoring metric to use when filtering epitopes\nby binding-threshold\
    \ or minimum fold change. lowest:\nBest MT Score/Corresponding Fold Change - lowest\
    \ MT\nic50 binding score/corresponding fold change of all\nchosen prediction methods.\
    \ median: Median MT\nScore/Median Fold Change - median MT ic50 binding\nscore/fold\
    \ change of all chosen prediction methods.\nDefault: median"
  type: string
  inputBinding:
    prefix: --top-score-metric
- id: in_binding_threshold
  doc: "Report only epitopes where the mutant allele has ic50\nbinding scores below\
    \ this value. Default: 500"
  type: long
  inputBinding:
    prefix: --binding-threshold
- id: in_minimum_fold_change
  doc: "Minimum fold change between mutant binding score and\nwild-type score. The\
    \ default is 0, which filters no\nresults, but 1 is often a sensible choice (requiring\n\
    that binding is better to the MT than WT). Default: 0"
  type: long
  inputBinding:
    prefix: --minimum-fold-change
- id: in_normal_cov
  doc: "Normal Coverage Cutoff. Sites above this cutoff will\nbe considered. Default:\
    \ 5"
  type: long
  inputBinding:
    prefix: --normal-cov
- id: in_t_dna_cov
  doc: "Tumor DNA Coverage Cutoff. Sites above this cutoff\nwill be considered. Default:\
    \ 10"
  type: long
  inputBinding:
    prefix: --tdna-cov
- id: in_trna_cov
  doc: "Tumor RNA Coverage Cutoff. Sites above this cutoff\nwill be considered. Default:\
    \ 10"
  type: long
  inputBinding:
    prefix: --trna-cov
- id: in_normal_vaf
  doc: "Normal VAF Cutoff. Sites BELOW this cutoff in normal\nwill be considered.\
    \ Default: 2"
  type: long
  inputBinding:
    prefix: --normal-vaf
- id: in_t_dna_vaf
  doc: "Tumor DNA VAF Cutoff. Sites above this cutoff will be\nconsidered. Default:\
    \ 40"
  type: long
  inputBinding:
    prefix: --tdna-vaf
- id: in_trna_vaf
  doc: "Tumor RNA VAF Cutoff. Sites above this cutoff will be\nconsidered. Default:\
    \ 40"
  type: long
  inputBinding:
    prefix: --trna-vaf
- id: in_expn_val
  doc: "Gene and Transcript Expression cutoff. Sites above\nthis cutoff will be considered.\
    \ Default: 1"
  type: long
  inputBinding:
    prefix: --expn-val
- id: in_net_chop_threshold
  doc: 'NetChop prediction threshold. Default: 0.5'
  type: double
  inputBinding:
    prefix: --net-chop-threshold
- id: in_additional_report_columns
  doc: Additional columns to output in the final report
  type: string
  inputBinding:
    prefix: --additional-report-columns
- id: in_fast_a_size
  doc: "Number of fasta entries per IEDB request. For some\nresource-intensive prediction\
    \ algorithms like\nPickpocket and NetMHCpan it might be helpful to reduce\nthis\
    \ number. Needs to be an even number."
  type: long
  inputBinding:
    prefix: --fasta-size
- id: in_ie_db_retries
  doc: "Number of retries when making requests to the IEDB\nRESTful web interface.\
    \ Must be less than or equal to\n100.Default: 5"
  type: long
  inputBinding:
    prefix: --iedb-retries
- id: in_downstream_sequence_length
  doc: "Cap to limit the downstream sequence length for\nframeshifts when creating\
    \ the fasta file. Use 'full'\nto include the full downstream sequence. Default:\
    \ 1000"
  type: long
  inputBinding:
    prefix: --downstream-sequence-length
- id: in_keep_tmp_files
  doc: "Keep intermediate output files. This migt be useful\nfor debugging purposes.\n"
  type: boolean
  inputBinding:
    prefix: --keep-tmp-files
- id: in_output_dir
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: "A VEP-annotated single-sample VCF containing\ntranscript, Wildtype protein\
    \ sequence, and Downstream\nprotein sequence information"
  type: string
  inputBinding:
    position: 1
- id: in_sample_name
  doc: "The name of the sample being processed. This will be\nused as a prefix for\
    \ output files"
  type: string
  inputBinding:
    position: 2
- id: in_allele
  doc: "Name of the allele to use for epitope prediction.\nMultiple alleles can be\
    \ specified using a comma-\nseparated list. For a list of available alleles, use:\n\
    `pvacseq valid_alleles`"
  type: string
  inputBinding:
    position: 3
- id: in_spaces
  doc: output_dir            The directory for writing all result files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pvacseq
- run
