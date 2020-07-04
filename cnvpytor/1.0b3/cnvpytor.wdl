version 1.0

task Cnvpytor {
  input {
    Boolean? style
    String? plot_output_file
    String? animation
    Boolean? make_gc_genome_file
    Boolean? make_mask_genome_file
    Boolean? use_mask_with_rd
    Boolean? no_gc_corr
    String? reference_genome
    String? vcf_sample
    String? reference_genomes_conf
    Boolean? ls
    Boolean? info
    Boolean? comp
    Boolean? genotype
    Boolean? metadata
    Boolean? export
    Boolean? version
    Array[String] root
    Boolean? download
  }
  command <<<
    cnvpytor \
      ~{true="-style" false="" style} \
      ~{if defined(plot_output_file) then ("--plot_output_file " +  '"' + plot_output_file + '"') else ""} \
      ~{if defined(animation) then ("--animation " +  '"' + animation + '"') else ""} \
      ~{true="--make_gc_genome_file" false="" make_gc_genome_file} \
      ~{true="--make_mask_genome_file" false="" make_mask_genome_file} \
      ~{true="--use_mask_with_rd" false="" use_mask_with_rd} \
      ~{true="--no_gc_corr" false="" no_gc_corr} \
      ~{if defined(reference_genome) then ("--reference_genome " +  '"' + reference_genome + '"') else ""} \
      ~{if defined(vcf_sample) then ("--vcf_sample " +  '"' + vcf_sample + '"') else ""} \
      ~{if defined(reference_genomes_conf) then ("--reference_genomes_conf " +  '"' + reference_genomes_conf + '"') else ""} \
      ~{true="--ls" false="" ls} \
      ~{true="-info" false="" info} \
      ~{true="-comp" false="" comp} \
      ~{true="-genotype" false="" genotype} \
      ~{true="--metadata" false="" metadata} \
      ~{true="-export" false="" export} \
      ~{true="-version" false="" version} \
      ~{if defined(root) then ("-root " +  '"' + root + '"') else ""} \
      ~{true="-download" false="" download}
  >>>
  parameter_meta {
    style: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}, --plot_style {Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10} available plot styles: Solarize_Light2, _classic_test_patch, bmh, classic, dark_background, fast, fivethirtyeight, ggplot, grayscale, seaborn, seaborn-bright, seaborn-colorblind, seaborn-dark, seaborn-dark-palette, seaborn-darkgrid, seaborn-deep, seaborn-muted, seaborn-notebook, seaborn-paper, seaborn-pastel, seaborn-poster, seaborn-talk, seaborn- ticks, seaborn-white, seaborn-whitegrid, tableau- colorblind10"
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
    info: "[INFO [INFO ...]], --info [INFO [INFO ...]] print statistics for pythor file(s)"
    comp: "[COMPARE [COMPARE ...]], --compare [COMPARE [COMPARE ...]] compere two regions: -comp reg1 reg2 [n_bins]"
    genotype: "[GENOTYPE [GENOTYPE ...]], --genotype [GENOTYPE [GENOTYPE ...]]"
    metadata: "list Metadata"
    export: "[EXPORT [EXPORT ...]], --export [EXPORT [EXPORT ...]] Export to jbrowse and cnvnator"
    version: ""
    root: ""
    download: ""
  }
}