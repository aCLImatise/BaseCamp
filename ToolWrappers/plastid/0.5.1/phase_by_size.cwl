class: CommandLineTool
id: phase_by_size.cwl
inputs:
- id: in_codon_buffer
  doc: "Codons before and after start codon to ignore\n(Default: 5)"
  type: long
  inputBinding:
    prefix: --codon_buffer
- id: in_quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: "Increase verbosity. With '-v', show every warning.\nWith '-vv', turn warnings\
    \ into exceptions. Cannot use\nwith '-q'. (Default: show each type of warning\
    \ once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_annotation_files
  doc: "[BED | BigBed | GTF2 | GFF3] [infile.[BED | BigBed | GTF2 | GFF3] ...]\nZero\
    \ or more annotation files (max 1 file if BigBed)"
  type: File
  inputBinding:
    prefix: --annotation_files
- id: in_annotation_format
  doc: "Format of annotation_files (Default: GTF2). Note: GFF3\nassembly assumes SO\
    \ v.2.5.2 feature ontologies, which\nmay or may not match your specific file."
  type: string
  inputBinding:
    prefix: --annotation_format
- id: in_add_three
  doc: "If supplied, coding regions will be extended by 3\nnucleotides at their 3'\
    \ ends (except for GTF2 files\nthat explicitly include `stop_codon` features).\
    \ Use if\nyour annotation file excludes stop codons from CDS."
  type: boolean
  inputBinding:
    prefix: --add_three
- id: in_tab_ix
  doc: "annotation_files are tabix-compressed and indexed\n(Default: False). Ignored\
    \ for BigBed files."
  type: boolean
  inputBinding:
    prefix: --tabix
- id: in_sorted
  doc: "annotation_files are sorted by chromosomal position\n(Default: False)"
  type: boolean
  inputBinding:
    prefix: --sorted
- id: in_bed_extra_columns
  doc: "Number of extra columns in BED file (e.g. in custom\nENCODE formats) or list\
    \ of names for those columns.\n(Default: 0)."
  type: string[]
  inputBinding:
    prefix: --bed_extra_columns
- id: in_maxmem
  doc: "Maximum desired memory footprint in MB to devote to\nBigBed/BigWig files.\
    \ May be exceeded by large queries.\n(Default: 0, No maximum)"
  type: long
  inputBinding:
    prefix: --maxmem
- id: in_gff_transcript_types
  doc: "GFF3 feature types to include as transcripts, even if\nno exons are present\
    \ (for GFF3 only; default: use SO\nv2.5.3 specification)"
  type: string[]
  inputBinding:
    prefix: --gff_transcript_types
- id: in_gff_exon_types
  doc: "GFF3 feature types to include as exons (for GFF3 only;\ndefault: use SO v2.5.3\
    \ specification)"
  type: string[]
  inputBinding:
    prefix: --gff_exon_types
- id: in_gff_cds_types
  doc: "GFF3 feature types to include as CDS (for GFF3 only;\ndefault: use SO v2.5.3\
    \ specification)"
  type: string[]
  inputBinding:
    prefix: --gff_cds_types
- id: in_count_files
  doc: "One or more count or alignment file(s) from a single\nsample or set of samples\
    \ to be pooled."
  type: string[]
  inputBinding:
    prefix: --count_files
- id: in_count_file_format
  doc: "Format of file containing alignments or counts\n(Default: BAM)"
  type: string
  inputBinding:
    prefix: --countfile_format
- id: in_sum
  doc: "Sum used in normalization of counts and RPKM/RPNT\ncalculations (Default:\
    \ total mapped reads/counts in\ndataset)"
  type: string
  inputBinding:
    prefix: --sum
- id: in_min_length
  doc: "Minimum read length required to be included (BAM &\nbowtie files only. Default:\
    \ 25)"
  type: long
  inputBinding:
    prefix: --min_length
- id: in_max_length
  doc: "Maximum read length permitted to be included (BAM &\nbowtie files only. Default:\
    \ 100)"
  type: long
  inputBinding:
    prefix: --max_length
- id: in_five_prime_variable
  doc: "Map read alignment to a variable offset from 5'\nposition of read, with offset\
    \ determined by read\nlength. Requires `--offset` below"
  type: boolean
  inputBinding:
    prefix: --fiveprime_variable
- id: in_five_prime
  doc: Map read alignment to 5' position.
  type: boolean
  inputBinding:
    prefix: --fiveprime
- id: in_three_prime
  doc: Map read alignment to 3' position
  type: boolean
  inputBinding:
    prefix: --threeprime
- id: in_center
  doc: "Subtract N positions from each end of read, and add\n1/(length-N), to each\
    \ remaining position, where N is\nspecified by `--nibble`"
  type: boolean
  inputBinding:
    prefix: --center
- id: in_offset
  doc: "For `--fiveprime` or `--threeprime`, provide an\ninteger representing the\
    \ offset into the read,\nstarting from either the 5' or 3' end, at which data\n\
    should be plotted. For `--fiveprime_variable`, provide\nthe filename of a two-column\
    \ tab-delimited text file,\nin which first column represents read length or the\n\
    special keyword `'default'`, and the second column\nrepresents the offset from\
    \ the five prime end of that\nread length at which the read should be mapped.\n\
    (Default: 0)"
  type: long
  inputBinding:
    prefix: --offset
- id: in_nibble
  doc: "For use with `--center` only. nt to remove from each\nend of read before mapping\
    \ (Default: 0)"
  type: long
  inputBinding:
    prefix: --nibble
- id: in_fig_format
  doc: 'File format for figure(s); Default: png)'
  type: string
  inputBinding:
    prefix: --figformat
- id: in_fig_size
  doc: "N         Figure width and height, in inches. (Default: use\nmatplotlibrc\
    \ params)"
  type: string
  inputBinding:
    prefix: --figsize
- id: in_title
  doc: Base title for plot(s).
  type: string
  inputBinding:
    prefix: --title
- id: in_cmap
  doc: "Matplotlib color map from which palette will be made\n(e.g. 'Blues','autumn','Set1';\
    \ default: use colors\nfrom ``--stylesheet`` if given, or color cycle in\nmatplotlibrc)"
  type: long
  inputBinding:
    prefix: --cmap
- id: in_dpi
  doc: 'Figure resolution (Default: 150)'
  type: long
  inputBinding:
    prefix: --dpi
- id: in_stylesheet
  doc: "{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}\n\
    Use this matplotlib stylesheet instead of matplotlibrc\nparams\n"
  type: boolean
  inputBinding:
    prefix: --stylesheet
- id: in_out_base_phasing_dot_txt
  doc: Read phasing for each read length
  type: string
  inputBinding:
    position: 0
- id: in_out_base_phasing_dot_svg
  doc: Plot of phasing by read length
  type: string
  inputBinding:
    position: 1
- id: in_roi_file
  doc: "Optional. ROI file of maximal spanning windows\nsurrounding start codons,\
    \ from ``metagene generate``\nsubprogram. Using this instead of `--annotation_files`\n\
    prevents double-counting of codons when multiple\ntranscript isoforms exist for\
    \ a gene. See the\ndocumentation for `metagene` for more info about ROI\nfiles.If\
    \ an ROI file is not given, supply an\nannotation with ``--annotation_files``"
  type: string
  inputBinding:
    position: 0
- id: in_out_base
  doc: Required. Basename for output files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phase_by_size
