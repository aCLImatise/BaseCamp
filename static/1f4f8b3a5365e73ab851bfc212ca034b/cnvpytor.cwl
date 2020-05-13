class: CommandLineTool
id: cnvpytor.cwl
inputs:
- id: style
  doc: '{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10},
    --plot_style {Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}
    available plot styles: Solarize_Light2, _classic_test_patch, bmh, classic, dark_background,
    fast, fivethirtyeight, ggplot, grayscale, seaborn, seaborn-bright, seaborn-colorblind,
    seaborn-dark, seaborn-dark-palette, seaborn-darkgrid, seaborn-deep, seaborn-muted,
    seaborn-notebook, seaborn-paper, seaborn-pastel, seaborn-poster, seaborn-talk,
    seaborn- ticks, seaborn-white, seaborn-whitegrid, tableau- colorblind10'
  type: boolean
  inputBinding:
    prefix: -style
- id: plot_output_file
  doc: output filename prefix and extension
  type: string
  inputBinding:
    prefix: --plot_output_file
- id: animation
  doc: animation folder/prefix
  type: string
  inputBinding:
    prefix: --animation
- id: make_gc_genome_file
  doc: used with -gc will create genome gc file
  type: boolean
  inputBinding:
    prefix: --make_gc_genome_file
- id: make_mask_genome_file
  doc: used with -mask will create genome mask file
  type: boolean
  inputBinding:
    prefix: --make_mask_genome_file
- id: use_mask_with_rd
  doc: used P mask in RD histograms
  type: boolean
  inputBinding:
    prefix: --use_mask_with_rd
- id: no_gc_corr
  doc: do not use GC correction in RD histograms
  type: boolean
  inputBinding:
    prefix: --no_gc_corr
- id: reference_genome
  doc: Manually set reference genome
  type: string
  inputBinding:
    prefix: --reference_genome
- id: vcf_sample
  doc: Sample name in vcf file
  type: string
  inputBinding:
    prefix: --vcf_sample
- id: reference_genomes_conf
  doc: Configuration with reference genomes
  type: string
  inputBinding:
    prefix: --reference_genomes_conf
- id: ls
  doc: list pytor file(s) content
  type: boolean
  inputBinding:
    prefix: --ls
- id: info
  doc: '[INFO [INFO ...]], --info [INFO [INFO ...]] print statistics for pythor file(s)'
  type: boolean
  inputBinding:
    prefix: -info
- id: comp
  doc: '[COMPARE [COMPARE ...]], --compare [COMPARE [COMPARE ...]] compere two regions:
    -comp reg1 reg2 [n_bins]'
  type: boolean
  inputBinding:
    prefix: -comp
- id: genotype
  doc: '[GENOTYPE [GENOTYPE ...]], --genotype [GENOTYPE [GENOTYPE ...]]'
  type: boolean
  inputBinding:
    prefix: -genotype
- id: metadata
  doc: list Metadata
  type: boolean
  inputBinding:
    prefix: --metadata
- id: export
  doc: '[EXPORT [EXPORT ...]], --export [EXPORT [EXPORT ...]] Export to jbrowse and
    cnvnator'
  type: boolean
  inputBinding:
    prefix: -export
outputs: []
cwlVersion: v1.1
baseCommand:
- cnvpytor
