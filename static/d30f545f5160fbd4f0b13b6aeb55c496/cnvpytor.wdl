version 1.0

task Cnvpytor {
  input {
    Array[String] root
    Boolean? download_resources
    Array[String] chrom
    String? verbose
    File? log_file
    Int? max_cores
    Array[String] rd
    File? reference_filename
    File? gc
    File? copy_gc
    Array[String] his
    Array[String] stat
    Array[String] partition
    Array[String] cnv_caller_multiplebin
    Array[String] vcf
    Array[String] somatic_snv
    String? rd_from_vcf
    Boolean? no_snp_counts
    String? ad_tag
    String? gt_tag
    String? dp_tag
    String? call_set
    Array[String] pile_up_bam
    Boolean? rd_from_snp
    File? mask
    Boolean? mask_snps
    String? mask_sn_vs
    File? id_var
    Array[String] baf
    Boolean? no_mask
    Boolean? use_id
    Boolean? use_phase
    Boolean? reduce_noise
    Float? baf_likelihood_width
    String? panels
    Boolean? style
    File? plot_output_file
    Directory? animation
    Boolean? make_gc_genome_file
    Boolean? make_mask_genome_file
    Boolean? use_mask_with_rd
    Boolean? no_gc_corr
    String? reference_genome
    File? vcf_sample
    String? reference_genomes_conf
    Boolean? ls
    Boolean? info
    Boolean? comp
    Boolean? genotype
    Boolean? metadata
    Boolean? export
    Boolean? version
    String plotting
  }
  command <<<
    cnvpytor \
      ~{plotting} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if (download_resources) then "--download_resources" else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log_file) then ("--log_file " +  '"' + log_file + '"') else ""} \
      ~{if defined(max_cores) then ("--max_cores " +  '"' + max_cores + '"') else ""} \
      ~{if defined(rd) then ("--rd " +  '"' + rd + '"') else ""} \
      ~{if defined(reference_filename) then ("--reference_filename " +  '"' + reference_filename + '"') else ""} \
      ~{if defined(gc) then ("--gc " +  '"' + gc + '"') else ""} \
      ~{if defined(copy_gc) then ("--copy_gc " +  '"' + copy_gc + '"') else ""} \
      ~{if defined(his) then ("--his " +  '"' + his + '"') else ""} \
      ~{if defined(stat) then ("--stat " +  '"' + stat + '"') else ""} \
      ~{if defined(partition) then ("--partition " +  '"' + partition + '"') else ""} \
      ~{if defined(cnv_caller_multiplebin) then ("--call " +  '"' + cnv_caller_multiplebin + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(somatic_snv) then ("--somatic_snv " +  '"' + somatic_snv + '"') else ""} \
      ~{if defined(rd_from_vcf) then ("--rd_from_vcf " +  '"' + rd_from_vcf + '"') else ""} \
      ~{if (no_snp_counts) then "--no_snp_counts" else ""} \
      ~{if defined(ad_tag) then ("--ad_tag " +  '"' + ad_tag + '"') else ""} \
      ~{if defined(gt_tag) then ("--gt_tag " +  '"' + gt_tag + '"') else ""} \
      ~{if defined(dp_tag) then ("--dp_tag " +  '"' + dp_tag + '"') else ""} \
      ~{if defined(call_set) then ("--callset " +  '"' + call_set + '"') else ""} \
      ~{if defined(pile_up_bam) then ("--pileup_bam " +  '"' + pile_up_bam + '"') else ""} \
      ~{if (rd_from_snp) then "--rd_from_snp" else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if (mask_snps) then "--mask_snps" else ""} \
      ~{if defined(mask_sn_vs) then ("--mask_snvs " +  '"' + mask_sn_vs + '"') else ""} \
      ~{if defined(id_var) then ("--idvar " +  '"' + id_var + '"') else ""} \
      ~{if defined(baf) then ("--baf " +  '"' + baf + '"') else ""} \
      ~{if (no_mask) then "--no_mask" else ""} \
      ~{if (use_id) then "--use_id" else ""} \
      ~{if (use_phase) then "--use_phase" else ""} \
      ~{if (reduce_noise) then "--reduce_noise" else ""} \
      ~{if defined(baf_likelihood_width) then ("--baf_likelihood_width " +  '"' + baf_likelihood_width + '"') else ""} \
      ~{if defined(panels) then ("-panels " +  '"' + panels + '"') else ""} \
      ~{if (style) then "-style" else ""} \
      ~{if defined(plot_output_file) then ("--plot_output_file " +  '"' + plot_output_file + '"') else ""} \
      ~{if defined(animation) then ("--animation " +  '"' + animation + '"') else ""} \
      ~{if (make_gc_genome_file) then "--make_gc_genome_file" else ""} \
      ~{if (make_mask_genome_file) then "--make_mask_genome_file" else ""} \
      ~{if (use_mask_with_rd) then "--use_mask_with_rd" else ""} \
      ~{if (no_gc_corr) then "--no_gc_corr" else ""} \
      ~{if defined(reference_genome) then ("--reference_genome " +  '"' + reference_genome + '"') else ""} \
      ~{if defined(vcf_sample) then ("--vcf_sample " +  '"' + vcf_sample + '"') else ""} \
      ~{if defined(reference_genomes_conf) then ("--reference_genomes_conf " +  '"' + reference_genomes_conf + '"') else ""} \
      ~{if (ls) then "--ls" else ""} \
      ~{if (info) then "-info" else ""} \
      ~{if (comp) then "-comp" else ""} \
      ~{if (genotype) then "-genotype" else ""} \
      ~{if (metadata) then "--metadata" else ""} \
      ~{if (export) then "-export" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    root: "CNVnator hd5 file: data storage for all calculations"
    download_resources: "download resource files"
    chrom: "list of chromosomes to apply calculation"
    verbose: "verbose level: debug, info (default), warning, error"
    log_file: "log file"
    max_cores: "maximal number of cores to use in calculation"
    rd: "read bam/sam/cram and store read depth information"
    reference_filename: "reference fasta for CRAM"
    gc: "read fasta file and store GC/AT content"
    copy_gc: "copy GC/AT content from another cnvnator file"
    his: "create histograms for specified bin size (multiple bin\\nsizes separate by space)"
    stat: "calculate statistics for specified bin size (multiple\\nbin sizes separate by space)"
    partition: "calculate segmentation for specified bin size\\n(multiple bin sizes separate by space)"
    cnv_caller_multiplebin: "CNV caller: [baf] bin_size [bin_size2 ...] (multiple\\nbin sizes separate by space)"
    vcf: "read SNP data from vcf files"
    somatic_snv: "read SNP data from vcf files"
    rd_from_vcf: "read SNP data from vcf files"
    no_snp_counts: "read positions of snps, not counts (AD tag)"
    ad_tag: "counts tag (default: AD)"
    gt_tag: "genotype tag (default: GT)"
    dp_tag: "read depth tag (default: DP)"
    call_set: "name for somatic VCF signal"
    pile_up_bam: "calculate SNP counts from bam files"
    rd_from_snp: "calculate RD from SNP counts"
    mask: "read fasta mask file and flag SNPs in P region"
    mask_snps: "flag SNPs in P region"
    mask_sn_vs: "flag SNVs in P region"
    id_var: "read vcf file and flag SNPs that exist in database\\nfile"
    baf: "create BAF histograms for specified bin size (multiple\\nbin sizes separate by space)"
    no_mask: "do not use P mask in BAF histograms"
    use_id: "use id flag filtering in SNP histograms"
    use_phase: "use information about phase while processing SNP data"
    reduce_noise: "reduce noise in processing SNP data"
    baf_likelihood_width: "likelihood width used in processing SNP data\\n(default=0.8)"
    panels: "[{rd,baf,likelihood} ...], --panels {rd,baf,likelihood} [{rd,baf,likelihood} ...]\\nplot panels (with -plot regions)"
    style: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}, --plot_style {Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}\\navailable plot styles: Solarize_Light2,\\n_classic_test_patch, bmh, classic, dark_background,\\nfast, fivethirtyeight, ggplot, grayscale, seaborn,\\nseaborn-bright, seaborn-colorblind, seaborn-dark,\\nseaborn-dark-palette, seaborn-darkgrid, seaborn-deep,\\nseaborn-muted, seaborn-notebook, seaborn-paper,\\nseaborn-pastel, seaborn-poster, seaborn-talk, seaborn-\\nticks, seaborn-white, seaborn-whitegrid, tableau-\\ncolorblind10"
    plot_output_file: "output filename prefix and extension"
    animation: "animation folder/prefix"
    make_gc_genome_file: "used with -gc will create genome gc file"
    make_mask_genome_file: "used with -mask will create genome mask file"
    use_mask_with_rd: "used P mask in RD histograms"
    no_gc_corr: "do not use GC correction in RD histograms"
    reference_genome: "Manually set reference genome"
    vcf_sample: "Sample name in vcf file"
    reference_genomes_conf: "Configuration with reference genomes"
    ls: "list pytor file(s) content"
    info: "[INFO [INFO ...]], --info [INFO [INFO ...]]\\nprint statistics for pythor file(s)"
    comp: "[COMPARE [COMPARE ...]], --compare [COMPARE [COMPARE ...]]\\ncompere two regions: -comp reg1 reg2 [n_bins]"
    genotype: "[GENOTYPE [GENOTYPE ...]], --genotype [GENOTYPE [GENOTYPE ...]]"
    metadata: "list Metadata"
    export: "[EXPORT [EXPORT ...]], --export [EXPORT [EXPORT ...]]\\nExport to jbrowse and cnvnator\\n"
    version: ""
    plotting: "-view VIEW, --view VIEW"
  }
  output {
    File out_stdout = stdout()
    File out_plot_output_file = "${in_plot_output_file}"
  }
}