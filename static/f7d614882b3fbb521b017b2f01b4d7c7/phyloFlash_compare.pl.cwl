class: CommandLineTool
id: phyloFlash_compare.pl.cwl
inputs:
- id: in_zip
  doc: "Comma-separated list of tar.gz archives from phyloFlash runs.\nThese will\
    \ be parsed to search for the\n[LIBNAME].phyloFlash.NTUabundance.csv files within\
    \ the archive,\nto extract the NTU classifications. This assumes that the\narchive\
    \ filenames are named [LIBNAME].phyloFlash.tar.gz, and\nthat the LIBNAME matches\
    \ the contents of the archive."
  type: string?
  inputBinding:
    prefix: --zip
- id: in_all_zip
  doc: "Use all phyloFlash tar.gz archives in the current folder (by\nmatching filename\
    \ *.phyloFlash.tar.gz) for a comparison run.\nOverrides anything passed to option\
    \ --zip."
  type: boolean?
  inputBinding:
    prefix: --allzip
- id: in_use_sam
  doc: "Ignore NTU abundance tables in CSV format, and recalculate the\nNTU abundances\
    \ from SAM files in the compressed tar.gz\nphyloFlash archives. Useful if e.g.\
    \ phyloFlash was originally\ncalled to summarize the taxonomy at a higher level\
    \ than you want\nto use for the comparison.\nOnly works if the tar.gz archives\
    \ from phyloFlash runs are\nspecified with the --zip option above.\nDefault: No."
  type: boolean?
  inputBinding:
    prefix: --use_SAM
- id: in_task
  doc: "Type of analysis to be run. Options: \"heatmap\", \"barplot\",\n\"matrix\"\
    , \"ntu_table\" or a recognizable substring thereof.\nSupply more than one option\
    \ as comma- separated list.\nDefault: None"
  type: string?
  inputBinding:
    prefix: --task
- id: in_out
  doc: "Prefix for output files.\nDefault: \"test.phyloFlash_compare\""
  type: string?
  inputBinding:
    prefix: --out
- id: in_out_fmt
  doc: "Format for plots (tasks 'barplot' and 'heatmap' only). Options:\n\"pdf\",\
    \ \"png\"\nDefault: \"pdf\""
  type: string?
  inputBinding:
    prefix: --outfmt
- id: in_level
  doc: "Taxonomic level to perform the comparison. Must be an integer\nbetween 1 and\
    \ 7.\nDefault: 4 ('Order')"
  type: long?
  inputBinding:
    prefix: --level
- id: in_keep_tmp
  doc: "Keep temporary files\nDefault: No"
  type: boolean?
  inputBinding:
    prefix: --keeptmp
- id: in_log
  doc: "Save log file to file [OUTPREFIX].log\nDefault: No"
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_display_tax_a
  doc: "Number of top taxa to display in barplot. Integer between 3 and\n12 is preferable.\n\
    Default: 5"
  type: long?
  inputBinding:
    prefix: --displaytaxa
- id: in_barplot_palette
  doc: "Palette to color taxa in barplot. Should be one of the\nqualitative ColorBrewer2\
    \ palettes: Accent, Dark2, Paired,\nPastel1, Pastel2, Set1, Set2, or Set3.\nDefault:\
    \ \"Set3\""
  type: long?
  inputBinding:
    prefix: --barplot_palette
- id: in_barplot_subset
  doc: "Display only the subset from this taxon, e.g. \"Bacteria\". Should\nbe a taxon\
    \ string excluding trailing semicolon, e.g.\n\"Bacteria;Proteobacteria\".\nDefault:\
    \ None (show all)"
  type: string?
  inputBinding:
    prefix: --barplot_subset
- id: in_barplot_raw_val
  doc: "Logical: Display counts rather than proportions in barplot, i.e.\nbars will\
    \ not be rescaled to 100% for each sample.\nDefault: False"
  type: boolean?
  inputBinding:
    prefix: --barplot_rawval
- id: in_barplot_scale_plot_width
  doc: "Numeric: Change plot width by this scaling factor (e.g. 2 makes\nit twice\
    \ as wide). Allows adjustment when bars are hidden\nbecause the legend labels\
    \ are too long.\nDefault: 1"
  type: boolean?
  inputBinding:
    prefix: --barplot_scaleplotwidth
- id: in_cluster_samples
  doc: "Clustering method to use for clustering/sorting samples in\nheatmap. Options:\
    \ \"alpha\", \"ward.D\", \"single\", \"complete\",\n\"average\", \"mcquitty\"\
    , \"median\", \"centroid\", or \"custom\".\n\"custom\" will use the Unifrac-like\
    \ abundance weighted taxonomic\ndistances (the distance matrix can be separately\
    \ output with\n--task matrix). This is an experimental (unpublished) metric\n\
    similar to Unifrac, but using a taxonomy tree instead of a real\nphylogeny.\n\
    Default: \"ward.D\""
  type: string?
  inputBinding:
    prefix: --cluster-samples
- id: in_cluster_tax_a
  doc: "Clustering method to use for clustering/sorting taxa. Options:\n\"alpha\"\
    , \"ward\", \"single\", \"complete\", \"average\", \"mcquitty\",\n\"median\",\
    \ \"centroid\".\nDefault: \"ward.D\""
  type: string?
  inputBinding:
    prefix: --cluster-taxa
- id: in_long_tax_names
  doc: Do not shorten taxa names to two last groups
  type: boolean?
  inputBinding:
    prefix: --long-taxnames
- id: in_min_ntu_count
  doc: "Sum up NTUs with fewer counts into a pseudo-NTU \"Other\".\nDefault: 50\n"
  type: long?
  inputBinding:
    prefix: --min-ntu-count
- id: in_barplot
  doc: phyloFlash_compare.pl --csv
  type: string
  inputBinding:
    position: 0
- id: in_heat_map
  doc: '# phyloFlash tar.gz archives as input'
  type: string
  inputBinding:
    position: 0
- id: in_format_dot
  doc: "--csv FILES\nComma-separated list of NTU abundance tables from phyloFlash\n\
    runs. The files should be named\n[LIBNAME].phyloFlash.NTUabundance.csv or\n[LIBNAME].phyloFlash.NTUfull_abundance.csv"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyloflash:3.4--0
cwlVersion: v1.1
baseCommand:
- phyloFlash_compare.pl
