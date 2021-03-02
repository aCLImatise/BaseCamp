class: CommandLineTool
id: cnvpytor.cwl
inputs:
- id: in_root
  doc: 'CNVnator hd5 file: data storage for all calculations'
  type: string[]
  inputBinding:
    prefix: --root
- id: in_download_resources
  doc: download resource files
  type: boolean?
  inputBinding:
    prefix: --download_resources
- id: in_chrom
  doc: list of chromosomes to apply calculation
  type: string[]
  inputBinding:
    prefix: --chrom
- id: in_verbose
  doc: 'verbose level: debug, info (default), warning, error'
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_log_file
  doc: log file
  type: File?
  inputBinding:
    prefix: --log_file
- id: in_max_cores
  doc: maximal number of cores to use in calculation
  type: long?
  inputBinding:
    prefix: --max_cores
- id: in_rd
  doc: read bam/sam/cram and store read depth information
  type: string[]
  inputBinding:
    prefix: --rd
- id: in_reference_filename
  doc: reference fasta for CRAM
  type: File?
  inputBinding:
    prefix: --reference_filename
- id: in_gc
  doc: read fasta file and store GC/AT content
  type: File?
  inputBinding:
    prefix: --gc
- id: in_copy_gc
  doc: copy GC/AT content from another cnvnator file
  type: File?
  inputBinding:
    prefix: --copy_gc
- id: in_his
  doc: "create histograms for specified bin size (multiple bin\nsizes separate by\
    \ space)"
  type: string[]
  inputBinding:
    prefix: --his
- id: in_stat
  doc: "calculate statistics for specified bin size (multiple\nbin sizes separate\
    \ by space)"
  type: string[]
  inputBinding:
    prefix: --stat
- id: in_partition
  doc: "calculate segmentation for specified bin size\n(multiple bin sizes separate\
    \ by space)"
  type: string[]
  inputBinding:
    prefix: --partition
- id: in_call
  doc: "CNV caller: [baf] bin_size [bin_size2 ...] (multiple\nbin sizes separate by\
    \ space)"
  type: string[]
  inputBinding:
    prefix: --call
- id: in_vcf
  doc: read SNP data from vcf files
  type: string[]
  inputBinding:
    prefix: --vcf
- id: in_somatic_snv
  doc: read SNP data from vcf files
  type: string[]
  inputBinding:
    prefix: --somatic_snv
- id: in_rd_from_vcf
  doc: read SNP data from vcf files
  type: string?
  inputBinding:
    prefix: --rd_from_vcf
- id: in_no_snp_counts
  doc: read positions of snps, not counts (AD tag)
  type: boolean?
  inputBinding:
    prefix: --no_snp_counts
- id: in_ad_tag
  doc: 'counts tag (default: AD)'
  type: string?
  inputBinding:
    prefix: --ad_tag
- id: in_gt_tag
  doc: 'genotype tag (default: GT)'
  type: string?
  inputBinding:
    prefix: --gt_tag
- id: in_dp_tag
  doc: 'read depth tag (default: DP)'
  type: string?
  inputBinding:
    prefix: --dp_tag
- id: in_call_set
  doc: name for somatic VCF signal
  type: string?
  inputBinding:
    prefix: --callset
- id: in_pile_up_bam
  doc: calculate SNP counts from bam files
  type: string[]
  inputBinding:
    prefix: --pileup_bam
- id: in_rd_from_snp
  doc: calculate RD from SNP counts
  type: boolean?
  inputBinding:
    prefix: --rd_from_snp
- id: in_mask
  doc: read fasta mask file and flag SNPs in P region
  type: File?
  inputBinding:
    prefix: --mask
- id: in_mask_snps
  doc: flag SNPs in P region
  type: boolean?
  inputBinding:
    prefix: --mask_snps
- id: in_mask_sn_vs
  doc: flag SNVs in P region
  type: string?
  inputBinding:
    prefix: --mask_snvs
- id: in_id_var
  doc: "read vcf file and flag SNPs that exist in database\nfile"
  type: File?
  inputBinding:
    prefix: --idvar
- id: in_baf
  doc: "create BAF histograms for specified bin size (multiple\nbin sizes separate\
    \ by space)"
  type: string[]
  inputBinding:
    prefix: --baf
- id: in_no_mask
  doc: do not use P mask in BAF histograms
  type: boolean?
  inputBinding:
    prefix: --no_mask
- id: in_use_id
  doc: use id flag filtering in SNP histograms
  type: boolean?
  inputBinding:
    prefix: --use_id
- id: in_use_phase
  doc: use information about phase while processing SNP data
  type: boolean?
  inputBinding:
    prefix: --use_phase
- id: in_reduce_noise
  doc: reduce noise in processing SNP data
  type: boolean?
  inputBinding:
    prefix: --reduce_noise
- id: in_baf_likelihood_width
  doc: "likelihood width used in processing SNP data\n(default=0.8)"
  type: double?
  inputBinding:
    prefix: --baf_likelihood_width
- id: in_panels
  doc: "[{rd,baf,likelihood} ...], --panels {rd,baf,likelihood} [{rd,baf,likelihood}\
    \ ...]\nplot panels (with -plot regions)"
  type: string?
  inputBinding:
    prefix: -panels
- id: in_style
  doc: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10},\
    \ --plot_style {Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}\n\
    available plot styles: Solarize_Light2,\n_classic_test_patch, bmh, classic, dark_background,\n\
    fast, fivethirtyeight, ggplot, grayscale, seaborn,\nseaborn-bright, seaborn-colorblind,\
    \ seaborn-dark,\nseaborn-dark-palette, seaborn-darkgrid, seaborn-deep,\nseaborn-muted,\
    \ seaborn-notebook, seaborn-paper,\nseaborn-pastel, seaborn-poster, seaborn-talk,\
    \ seaborn-\nticks, seaborn-white, seaborn-whitegrid, tableau-\ncolorblind10"
  type: boolean?
  inputBinding:
    prefix: -style
- id: in_plot_output_file
  doc: output filename prefix and extension
  type: File?
  inputBinding:
    prefix: --plot_output_file
- id: in_animation
  doc: animation folder/prefix
  type: Directory?
  inputBinding:
    prefix: --animation
- id: in_make_gc_genome_file
  doc: used with -gc will create genome gc file
  type: boolean?
  inputBinding:
    prefix: --make_gc_genome_file
- id: in_make_mask_genome_file
  doc: used with -mask will create genome mask file
  type: boolean?
  inputBinding:
    prefix: --make_mask_genome_file
- id: in_use_mask_with_rd
  doc: used P mask in RD histograms
  type: boolean?
  inputBinding:
    prefix: --use_mask_with_rd
- id: in_no_gc_corr
  doc: do not use GC correction in RD histograms
  type: boolean?
  inputBinding:
    prefix: --no_gc_corr
- id: in_reference_genome
  doc: Manually set reference genome
  type: string?
  inputBinding:
    prefix: --reference_genome
- id: in_vcf_sample
  doc: Sample name in vcf file
  type: File?
  inputBinding:
    prefix: --vcf_sample
- id: in_reference_genomes_conf
  doc: Configuration with reference genomes
  type: string?
  inputBinding:
    prefix: --reference_genomes_conf
- id: in_ls
  doc: list pytor file(s) content
  type: boolean?
  inputBinding:
    prefix: --ls
- id: in_info
  doc: "[INFO [INFO ...]], --info [INFO [INFO ...]]\nprint statistics for pythor file(s)"
  type: boolean?
  inputBinding:
    prefix: -info
- id: in_comp
  doc: "[COMPARE [COMPARE ...]], --compare [COMPARE [COMPARE ...]]\ncompere two regions:\
    \ -comp reg1 reg2 [n_bins]"
  type: boolean?
  inputBinding:
    prefix: -comp
- id: in_genotype
  doc: '[GENOTYPE [GENOTYPE ...]], --genotype [GENOTYPE [GENOTYPE ...]]'
  type: boolean?
  inputBinding:
    prefix: -genotype
- id: in_metadata
  doc: list Metadata
  type: boolean?
  inputBinding:
    prefix: --metadata
- id: in_export
  doc: "[EXPORT [EXPORT ...]], --export [EXPORT [EXPORT ...]]\nExport to jbrowse and\
    \ cnvnator\n"
  type: boolean?
  inputBinding:
    prefix: -export
- id: in_version
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_plotting
  doc: -view VIEW, --view VIEW
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_plot_output_file
  doc: output filename prefix and extension
  type: File?
  outputBinding:
    glob: $(inputs.in_plot_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- cnvpytor
