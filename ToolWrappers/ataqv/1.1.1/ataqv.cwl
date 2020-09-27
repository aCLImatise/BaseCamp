class: CommandLineTool
id: ataqv.cwl
inputs:
- id: in_verbose
  doc: ': show more details and progress updates.'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: ': the maximum number of threads to use (right now, only for calculating TSS
    enrichment).'
  type: long
  inputBinding:
    prefix: --threads
- id: in_peak_file
  doc: "\"file name\"\nA BED file of peaks called for alignments in the BAM file.\
    \ Specify \"auto\" to use the\nBAM file name with \".peaks\" appended, or if the\
    \ BAM file contains read groups, to\nassume each read group has a peak file whose\
    \ name is the read group ID with \".peaks\"\nappended. If you specify a single\
    \ filename instead of \"auto\" with read groups, the\nsame peaks will be used\
    \ for all reads -- be sure this is what you want."
  type: boolean
  inputBinding:
    prefix: --peak-file
- id: in_tss_file
  doc: "\"file name\"\nA BED file of transcription start sites for the experiment\
    \ organism. If supplied,\na TSS enrichment score will be calculated according\
    \ to the ENCODE data standards.\nThis calculation requires that the BAM file of\
    \ alignments be indexed."
  type: boolean
  inputBinding:
    prefix: --tss-file
- id: in_tss_extension
  doc: "\"size\"\nIf a TSS enrichment score is requested, it will be calculated for\
    \ a region of\n\"size\" bases to either side of transcription start sites. The\
    \ default is 1000bp."
  type: boolean
  inputBinding:
    prefix: --tss-extension
- id: in_excluded_region_file
  doc: "\"file name\"\nA BED file containing excluded regions. Peaks or TSS overlapping\
    \ these will be ignored.\nMay be given multiple times."
  type: boolean
  inputBinding:
    prefix: --excluded-region-file
- id: in_metrics_file
  doc: "\"file name\"\nThe JSON file to which metrics will be written. The default\
    \ filename will be based on\nthe BAM file, with the suffix \".ataqv.json\"."
  type: boolean
  inputBinding:
    prefix: --metrics-file
- id: in_log_problematic_reads
  doc: "If given, problematic reads will be logged to a file per read group, with\
    \ names\nderived from the read group IDs, with \".problems\" appended. If no read\
    \ groups\nare found, the reads will be written to one file named after the BAM\
    \ file."
  type: boolean
  inputBinding:
    prefix: --log-problematic-reads
- id: in_name
  doc: "\"name\"\nA label to be used for the metrics when there are no read groups.\
    \ If there are read\ngroups, each will have its metrics named using its ID field.\
    \ With no read groups and\nno --name given, your metrics will be named after the\
    \ alignment file."
  type: boolean
  inputBinding:
    prefix: --name
- id: in_ignore_read_groups
  doc: "Even if read groups are present in the BAM file, ignore them and combine metrics\n\
    for all reads under a single sample and library named with the --name option.\
    \ This\nalso implies that a single peak file will be used for all reads; see the\
    \ --peak option."
  type: boolean
  inputBinding:
    prefix: --ignore-read-groups
- id: in_description
  doc: "\"description\"\nA short description of the experiment."
  type: boolean
  inputBinding:
    prefix: --description
- id: in_url
  doc: "\"URL\"\nA URL for more detail on the experiment (perhaps using a DOI)."
  type: boolean
  inputBinding:
    prefix: --url
- id: in_library_description
  doc: "\"description\"\nUse this description for all libraries in the BAM file, instead\
    \ of using the DS\nfield from each read group."
  type: boolean
  inputBinding:
    prefix: --library-description
- id: in_autosomal_reference_file
  doc: "\"file name\"\nA file containing autosomal reference names, one per line.\
    \ The names must match\nthe reference names in the alignment file exactly, or\
    \ the metrics based on counts\nof autosomal alignments will be wrong."
  type: boolean
  inputBinding:
    prefix: --autosomal-reference-file
- id: in_mitochondrial_reference_name
  doc: "\"name\"\nIf the reference name for mitochondrial DNA in your alignment file\
    \ is not \"chrM\",.\nuse this option to supply the correct name. Again, if this\
    \ name is wrong, all the\nmeasurements involving mitochondrial alignments will\
    \ be wrong.\n"
  type: boolean
  inputBinding:
    prefix: --mitochondrial-reference-name
- id: in_organism
  doc: "Autosomal References\n-------  ------------------\nfly  2R 2L 3R 3L 4\nhuman\
    \  1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22\nmouse  1 2 3 4 5\
    \ 6 7 8 9 10 11 12 13 14 15 16 17 18 19\nrat  1 2 3 4 5 6 7 8 9 10 11 12 13 14\
    \ 15 16 17 18 19 20\nworm  I II III IV V\nyeast  I II III IV V VI VII VIII IX\
    \ X XI XII XIII XIV XV XVI"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ataqv
