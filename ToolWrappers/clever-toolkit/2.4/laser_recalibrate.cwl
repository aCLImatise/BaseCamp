class: CommandLineTool
id: laser_recalibrate.cwl
inputs:
- id: in_arg_file_name
  doc: '[ --insertion_length_dist ] arg    File name of empiric insertion size'
  type: boolean
  inputBinding:
    prefix: -I
- id: in_arg_file_read
  doc: "[ --variations ] arg               File to read known indels from. These\n\
    indels will not incur alignment costs.\nWill also be taken into account for\n\
    internal segment size probability."
  type: boolean
  inputBinding:
    prefix: -V
- id: in_arg_value_subtract
  doc: "[ --phred_offset ] arg (=33)       Value to subtract from ASCII code to\n\
    get the PHRED quality."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_maximum_distance
  doc: "[ --max_pair_distance ] arg (=50000)\nMaximum distance of reads in a\n\"regular\"\
    \ pair. If distance is\nlarger/interchromosomal, reads can\nstill be paired, but\
    \ only if option\n--distant-pairs is given and no pair\nwith smaller distance\
    \ is present."
  type: boolean
  inputBinding:
    prefix: -m
- id: in_distant_pairs
  doc: "Allow long distance and\ninterchromosomal alignments to be\npaired."
  type: boolean
  inputBinding:
    prefix: --distant-pairs
- id: in_omit_alternative_cigar
  doc: "[ --omit_alt_cigars ]              Omit alternative cigar strings stored\n\
    in YA tags."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_omit_secondary_alignments
  doc: '[ --omit_secondary_aln ]           Omit secondary alignments.'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_use_m_matches
  doc: "[ --m_in_cigar ]                   Use M for matches and mismatches in\nCIGAR\
    \ strings (instead of '=' and 'X')."
  type: boolean
  inputBinding:
    prefix: -M
- id: in_mapq_cut_off
  doc: "(=0)                Only report properly paired reads for\nwhich each read\
    \ has a MAPQ above the\ngiven level. Other alignments will be\nomitted. Requires\
    \ option -s."
  type: long
  inputBinding:
    prefix: --mapq_cutoff
- id: in_convert_readnames_back
  doc: "[ --readgroup_from_name ]          Convert readnames of the format\n<readgroup>_<name>\
    \ back to <name> and\nset respective read group tag."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_arg_bam_file
  doc: "[ --readgroup_header ] arg         BAM file from which the @RG lines in\n\
    the header are to be copied."
  type: boolean
  inputBinding:
    prefix: -H
- id: in_use_separate_size
  doc: "[ --readgroup_wise_stats ]         Use separate insert size distributions\n\
    for every read group. If set,\n<insert-length-dist> must be a two\ncolumn text\
    \ file contain read group\nnames and filenames of corresponding\ninsert size distributions."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_put_alignments_readgroup
  doc: "[ --default_readgroup ]            Put all alignments into readgroup\n\"default\"\
    ."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_soft_clip_open_cost
  doc: (=35)       Cost for soft clipping a read.
  type: long
  inputBinding:
    prefix: --soft_clip_open_cost
- id: in_soft_clip_extend_cost
  doc: "(=3)      Cost for \"extending\" a soft clip; i.e.,\nsoftclipping k characters\
    \ from a read\nwill cost soft_clip_open_cost+k*soft_cl\nip_extend_cost.\n"
  type: long
  inputBinding:
    prefix: --soft_clip_extend_cost
- id: in_insert_length_dist
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- laser-recalibrate
