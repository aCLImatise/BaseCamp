class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/phase_by_size.cwl
inputs:
- id: codon_buffer
  doc: 'Codons before and after start codon to ignore (Default: 5)'
  type: string
  inputBinding:
    prefix: --codon_buffer
- id: quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings\
    \ into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: annotation_format
  doc: 'Format of annotation_files (Default: GTF2). Note: GFF3 assembly assumes SO
    v.2.5.2 feature ontologies, which may or may not match your specific file.'
  type: string
  inputBinding:
    prefix: --annotation_format
- id: add_three
  doc: If supplied, coding regions will be extended by 3 nucleotides at their 3' ends
    (except for GTF2 files that explicitly include `stop_codon` features). Use if
    your annotation file excludes stop codons from CDS.
  type: boolean
  inputBinding:
    prefix: --add_three
- id: tab_ix
  doc: 'annotation_files are tabix-compressed and indexed (Default: False). Ignored
    for BigBed files.'
  type: boolean
  inputBinding:
    prefix: --tabix
- id: sorted
  doc: 'annotation_files are sorted by chromosomal position (Default: False)'
  type: boolean
  inputBinding:
    prefix: --sorted
- id: bed_extra_columns
  doc: 'Number of extra columns in BED file (e.g. in custom ENCODE formats) or list
    of names for those columns. (Default: 0).'
  type: string[]
  inputBinding:
    prefix: --bed_extra_columns
- id: maxmem
  doc: 'Maximum desired memory footprint in MB to devote to BigBed/BigWig files. May
    be exceeded by large queries. (Default: 0, No maximum)'
  type: long
  inputBinding:
    prefix: --maxmem
- id: gff_transcript_types
  doc: 'GFF3 feature types to include as transcripts, even if no exons are present
    (for GFF3 only; default: use SO v2.5.3 specification)'
  type: string[]
  inputBinding:
    prefix: --gff_transcript_types
- id: gff_exon_types
  doc: 'GFF3 feature types to include as exons (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --gff_exon_types
- id: gff_cds_types
  doc: 'GFF3 feature types to include as CDS (for GFF3 only; default: use SO v2.5.3
    specification)'
  type: string[]
  inputBinding:
    prefix: --gff_cds_types
- id: count_files
  doc: One or more count or alignment file(s) from a single sample or set of samples
    to be pooled.
  type: string[]
  inputBinding:
    prefix: --count_files
- id: count_file_format
  doc: 'Format of file containing alignments or counts (Default: BAM)'
  type: string
  inputBinding:
    prefix: --countfile_format
- id: sum
  doc: 'Sum used in normalization of counts and RPKM/RPNT calculations (Default: total
    mapped reads/counts in dataset)'
  type: string
  inputBinding:
    prefix: --sum
- id: min_length
  doc: 'Minimum read length required to be included (BAM & bowtie files only. Default:
    25)'
  type: string
  inputBinding:
    prefix: --min_length
- id: max_length
  doc: 'Maximum read length permitted to be included (BAM & bowtie files only. Default:
    100)'
  type: string
  inputBinding:
    prefix: --max_length
- id: five_prime_variable
  doc: Map read alignment to a variable offset from 5' position of read, with offset
    determined by read length. Requires `--offset` below
  type: boolean
  inputBinding:
    prefix: --fiveprime_variable
- id: five_prime
  doc: Map read alignment to 5' position.
  type: boolean
  inputBinding:
    prefix: --fiveprime
- id: three_prime
  doc: Map read alignment to 3' position
  type: boolean
  inputBinding:
    prefix: --threeprime
- id: center
  doc: Subtract N positions from each end of read, and add 1/(length-N), to each remaining
    position, where N is specified by `--nibble`
  type: boolean
  inputBinding:
    prefix: --center
- id: offset
  doc: "For `--fiveprime` or `--threeprime`, provide an integer representing the offset\
    \ into the read, starting from either the 5' or 3' end, at which data should be\
    \ plotted. For `--fiveprime_variable`, provide the filename of a two-column tab-delimited\
    \ text file, in which first column represents read length or the special keyword\
    \ `'default'`, and the second column represents the offset from the five prime\
    \ end of that read length at which the read should be mapped. (Default: 0)"
  type: string
  inputBinding:
    prefix: --offset
- id: nibble
  doc: 'For use with `--center` only. nt to remove from each end of read before mapping
    (Default: 0)'
  type: string
  inputBinding:
    prefix: --nibble
- id: fig_format
  doc: 'File format for figure(s); Default: png)'
  type: string
  inputBinding:
    prefix: --figformat
- id: fig_size
  doc: 'N         Figure width and height, in inches. (Default: use matplotlibrc params)'
  type: string
  inputBinding:
    prefix: --figsize
- id: title
  doc: Base title for plot(s).
  type: string
  inputBinding:
    prefix: --title
- id: cmap
  doc: "Matplotlib color map from which palette will be made (e.g. 'Blues','autumn','Set1';\
    \ default: use colors from ``--stylesheet`` if given, or color cycle in matplotlibrc)"
  type: string
  inputBinding:
    prefix: --cmap
- id: dpi
  doc: 'Figure resolution (Default: 150)'
  type: string
  inputBinding:
    prefix: --dpi
- id: stylesheet
  doc: '{Solarize_Light2,_classic_test_patch,bmh,classic,dark_background,fast,fivethirtyeight,ggplot,grayscale,seaborn,seaborn-bright,seaborn-colorblind,seaborn-dark,seaborn-dark-palette,seaborn-darkgrid,seaborn-deep,seaborn-muted,seaborn-notebook,seaborn-paper,seaborn-pastel,seaborn-poster,seaborn-talk,seaborn-ticks,seaborn-white,seaborn-whitegrid,tableau-colorblind10}
    Use this matplotlib stylesheet instead of matplotlibrc params'
  type: boolean
  inputBinding:
    prefix: --stylesheet
- id: out_base_phasing_dot_txt
  doc: Read phasing for each read length
  type: string
  inputBinding:
    position: 0
- id: out_base_phasing_dot_svg
  doc: Plot of phasing by read length
  type: string
  inputBinding:
    position: 1
- id: roi_file
  doc: Optional. ROI file of maximal spanning windows surrounding start codons, from
    ``metagene generate`` subprogram. Using this instead of `--annotation_files` prevents
    double-counting of codons when multiple transcript isoforms exist for a gene.
    See the documentation for `metagene` for more info about ROI files.If an ROI file
    is not given, supply an annotation with ``--annotation_files``
  type: string
  inputBinding:
    position: 0
- id: out_base
  doc: Required. Basename for output files
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- phase_by_size
