class: CommandLineTool
id: ribotish_tisdiff.cwl
inputs:
- id: in_one
  doc: Prediction results of group 1 TIS data
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: Prediction results of group 2 TIS data
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_group_tis_files
  doc: Group 1 TIS enriched riboseq bam files, comma
  type: long?
  inputBinding:
    prefix: -a
- id: in_output_result_file
  doc: Output result file
  type: File?
  inputBinding:
    prefix: -o
- id: in_t_is_one_para
  doc: Input offset parameter files for group 1 bam files
  type: long?
  inputBinding:
    prefix: --tis1para
- id: in_tis_two_para
  doc: Input offset parameter files for group 2 bam files
  type: long?
  inputBinding:
    prefix: --tis2para
- id: in_gene_format
  doc: "Gene annotation file format (gtf, bed, gpd, gff,\ndefault: auto)"
  type: File?
  inputBinding:
    prefix: --geneformat
- id: in_max_nh
  doc: 'Max NH value allowed for bam alignments (default: 5)'
  type: long?
  inputBinding:
    prefix: --maxNH
- id: in_min_mapq
  doc: "Min MapQ value required for bam alignments (default:\n1)"
  type: long?
  inputBinding:
    prefix: --minMapQ
- id: in_secondary
  doc: Use bam secondary alignments
  type: boolean?
  inputBinding:
    prefix: --secondary
- id: in_paired
  doc: Reads are paired end
  type: boolean?
  inputBinding:
    prefix: --paired
- id: in_lone
  doc: Labels for group 1 TIS data
  type: long?
  inputBinding:
    prefix: --l1
- id: in_l_two
  doc: Labels for group 2 TIS data
  type: long?
  inputBinding:
    prefix: --l2
- id: in_no_compatible
  doc: Do not require reads compatible with transcript splice
  type: boolean?
  inputBinding:
    prefix: --nocompatible
- id: in_chr_map
  doc: "Input chromosome id mapping table file if annotation\nchr ids are not same\
    \ as chr ids in bam/fasta files"
  type: File?
  inputBinding:
    prefix: --chrmap
- id: in_norm_comm
  doc: Use common TISs instead of union TISs for
  type: boolean?
  inputBinding:
    prefix: --normcomm
- id: in_rnase_q
  doc: RNASeq count input
  type: string?
  inputBinding:
    prefix: --rnaseq
- id: in_scale_factor
  doc: 'Input TIS scale factor of 2/1 (default: auto)'
  type: long?
  inputBinding:
    prefix: --scalefactor
- id: in_rna_scale
  doc: 'Input RNASeq scale factor of 2/1 (default: auto)'
  type: long?
  inputBinding:
    prefix: --rnascale
- id: in_chi_two
  doc: "Use chisquare test instead of Fisher's exact test for\nmRNA referenced test"
  type: boolean?
  inputBinding:
    prefix: --chi2
- id: in_beta_bin_om
  doc: "Use beta-binom test instead of Fisher's exact test for\nmRNA referenced test"
  type: boolean?
  inputBinding:
    prefix: --betabinom
- id: in_export
  doc: "Export count table for differential analysis with\nother tools"
  type: string?
  inputBinding:
    prefix: --export
- id: in_plot_out
  doc: Scatter plot output pdf file
  type: File?
  inputBinding:
    prefix: --plotout
- id: in_fig_size
  doc: 'Scatter plot figure size (default: 8,8)'
  type: long?
  inputBinding:
    prefix: --figsize
- id: in_plot_ma
  doc: TIS normalization MA plot output pdf file
  type: File?
  inputBinding:
    prefix: --plotma
- id: in_qi
  doc: 'Index of TIS q value, 0 based (default: 15)'
  type: long?
  inputBinding:
    prefix: --qi
- id: in_minimum_fold_change
  doc: 'Minimum fold change threshold (default: 1.5)'
  type: double?
  inputBinding:
    prefix: -f
- id: in_ip_th
  doc: 'Input TIS p value threshold (default: 0.05)'
  type: double?
  inputBinding:
    prefix: --ipth
- id: in_i_qth
  doc: 'Input TIS q value threshold (default: 0.05)'
  type: double?
  inputBinding:
    prefix: --iqth
- id: in_opt_h
  doc: 'Output TIS diff p value threshold (default: 0.05)'
  type: double?
  inputBinding:
    prefix: --opth
- id: in_o_qth
  doc: 'Output TIS diff q value threshold (default: 0.05)'
  type: double?
  inputBinding:
    prefix: --oqth
- id: in_number_of_processes
  doc: Number of processes
  type: long?
  inputBinding:
    prefix: -p
- id: in_verbose
  doc: Increase output verbosity
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_b
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_junctions
  doc: --compatiblemis COMPATIBLEMIS
  type: string
  inputBinding:
    position: 2
- id: in_normalization
  doc: --normanno            Use only annotated TISs for normalization
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_result_file
  doc: Output result file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_result_file)
- id: out_plot_out
  doc: Scatter plot output pdf file
  type: File?
  outputBinding:
    glob: $(inputs.in_plot_out)
- id: out_plot_ma
  doc: TIS normalization MA plot output pdf file
  type: File?
  outputBinding:
    glob: $(inputs.in_plot_ma)
hints: []
cwlVersion: v1.1
baseCommand:
- ribotish
- tisdiff
