class: CommandLineTool
id: ../../../ribotish_tisdiff.cwl
inputs:
- id: one
  doc: Prediction results of group 1 TIS data
  type: string
  inputBinding:
    prefix: '-1'
- id: two
  doc: Prediction results of group 2 TIS data
  type: string
  inputBinding:
    prefix: '-2'
- id: a
  doc: Group 1 TIS enriched riboseq bam files, comma seperated
  type: string
  inputBinding:
    prefix: -a
- id: b
  doc: Group 2 TIS enriched riboseq bam files, comma seperated
  type: string
  inputBinding:
    prefix: -b
- id: gene_annotation_file
  doc: Gene annotation file
  type: string
  inputBinding:
    prefix: -g
- id: output_result_file
  doc: Output result file
  type: string
  inputBinding:
    prefix: -o
- id: t_is_one_para
  doc: Input offset parameter files for group 1 bam files
  type: string
  inputBinding:
    prefix: --tis1para
- id: tis_two_para
  doc: Input offset parameter files for group 2 bam files
  type: string
  inputBinding:
    prefix: --tis2para
- id: gene_format
  doc: 'Gene annotation file format (gtf, bed, gpd, gff, default: auto)'
  type: string
  inputBinding:
    prefix: --geneformat
- id: max_nh
  doc: 'Max NH value allowed for bam alignments (default: 5)'
  type: long
  inputBinding:
    prefix: --maxNH
- id: min_mapq
  doc: 'Min MapQ value required for bam alignments (default: 1)'
  type: long
  inputBinding:
    prefix: --minMapQ
- id: secondary
  doc: Use bam secondary alignments
  type: boolean
  inputBinding:
    prefix: --secondary
- id: paired
  doc: Reads are paired end
  type: boolean
  inputBinding:
    prefix: --paired
- id: lone
  doc: Labels for group 1 TIS data
  type: string
  inputBinding:
    prefix: --l1
- id: l_two
  doc: Labels for group 2 TIS data
  type: string
  inputBinding:
    prefix: --l2
- id: no_compatible
  doc: Do not require reads compatible with transcript splice junctions
  type: boolean
  inputBinding:
    prefix: --nocompatible
- id: compatible_mis
  doc: Missed bases allowed in reads compatibility check
  type: string
  inputBinding:
    prefix: --compatiblemis
- id: chr_map
  doc: Input chromosome id mapping table file if annotation chr ids are not same as
    chr ids in bam/fasta files
  type: string
  inputBinding:
    prefix: --chrmap
- id: norm_comm
  doc: Use common TISs instead of union TISs for normalization
  type: boolean
  inputBinding:
    prefix: --normcomm
- id: norman_no
  doc: Use only annotated TISs for normalization
  type: boolean
  inputBinding:
    prefix: --normanno
- id: rnase_q
  doc: RNASeq count input
  type: string
  inputBinding:
    prefix: --rnaseq
- id: scale_factor
  doc: 'Input TIS scale factor of 2/1 (default: auto)'
  type: string
  inputBinding:
    prefix: --scalefactor
- id: rna_scale
  doc: 'Input RNASeq scale factor of 2/1 (default: auto)'
  type: string
  inputBinding:
    prefix: --rnascale
- id: chi_two
  doc: Use chisquare test instead of Fisher's exact test for mRNA referenced test
  type: boolean
  inputBinding:
    prefix: --chi2
- id: beta_bin_om
  doc: Use beta-binom test instead of Fisher's exact test for mRNA referenced test
  type: boolean
  inputBinding:
    prefix: --betabinom
- id: export
  doc: Export count table for differential analysis with other tools
  type: string
  inputBinding:
    prefix: --export
- id: plot_out
  doc: Scatter plot output pdf file
  type: string
  inputBinding:
    prefix: --plotout
- id: fig_size
  doc: 'Scatter plot figure size (default: 8,8)'
  type: string
  inputBinding:
    prefix: --figsize
- id: plot_ma
  doc: TIS normalization MA plot output pdf file
  type: string
  inputBinding:
    prefix: --plotma
- id: qi
  doc: 'Index of TIS q value, 0 based (default: 15)'
  type: string
  inputBinding:
    prefix: --qi
- id: minimum_fold_default
  doc: 'Minimum fold change threshold (default: 1.5)'
  type: string
  inputBinding:
    prefix: -f
- id: ip_th
  doc: 'Input TIS p value threshold (default: 0.05)'
  type: string
  inputBinding:
    prefix: --ipth
- id: i_qth
  doc: 'Input TIS q value threshold (default: 0.05)'
  type: string
  inputBinding:
    prefix: --iqth
- id: opt_h
  doc: 'Output TIS diff p value threshold (default: 0.05)'
  type: string
  inputBinding:
    prefix: --opth
- id: o_qth
  doc: 'Output TIS diff q value threshold (default: 0.05)'
  type: string
  inputBinding:
    prefix: --oqth
- id: number_of_processes
  doc: Number of processes
  type: string
  inputBinding:
    prefix: -p
- id: verbose
  doc: Increase output verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ribotish
- tisdiff
