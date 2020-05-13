class: CommandLineTool
id: laser_recalibrate.cwl
inputs:
- id: insert_length_dist
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: i
  doc: '[ --insertion_length_dist ] arg    File name of empiric insertion size  distribution.'
  type: boolean
  inputBinding:
    prefix: -I
- id: d
  doc: '[ --deletion_length_dist ] arg     File name of empiric deletion size  distribution.'
  type: boolean
  inputBinding:
    prefix: -D
- id: s
  doc: '[ --snp ] arg                      File to read SNP positions from.  Mismatches
    at these positions will not  incur alignment costs.'
  type: boolean
  inputBinding:
    prefix: -S
- id: v
  doc: '[ --variations ] arg               File to read known indels from. These  indels
    will not incur alignment costs.  Will also be taken into account for  internal
    segment size probability.'
  type: boolean
  inputBinding:
    prefix: -V
- id: p
  doc: '[ --phred_offset ] arg (=33)       Value to subtract from ASCII code to  get
    the PHRED quality.'
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: '[ --max_pair_distance ] arg (=50000) Maximum distance of reads in a  "regular"
    pair. If distance is  larger/interchromosomal, reads can  still be paired, but
    only if option  --distant-pairs is given and no pair  with smaller distance is
    present.'
  type: boolean
  inputBinding:
    prefix: -m
- id: distant_pairs
  doc: Allow long distance and  interchromosomal alignments to be  paired.
  type: boolean
  inputBinding:
    prefix: --distant-pairs
- id: c
  doc: '[ --omit_alt_cigars ]              Omit alternative cigar strings stored  in
    YA tags.'
  type: boolean
  inputBinding:
    prefix: -c
- id: s
  doc: '[ --omit_secondary_aln ]           Omit secondary alignments.'
  type: boolean
  inputBinding:
    prefix: -s
- id: m
  doc: "[ --m_in_cigar ]                   Use M for matches and mismatches in  CIGAR\
    \ strings (instead of '=' and 'X')."
  type: boolean
  inputBinding:
    prefix: -M
- id: mapq_cut_off
  doc: (=0)                Only report properly paired reads for  which each read
    has a MAPQ above the  given level. Other alignments will be  omitted. Requires
    option -s.
  type: string
  inputBinding:
    prefix: --mapq_cutoff
- id: r
  doc: '[ --readgroup_from_name ]          Convert readnames of the format  <readgroup>_<name>
    back to <name> and  set respective read group tag.'
  type: boolean
  inputBinding:
    prefix: -R
- id: h
  doc: '[ --readgroup_header ] arg         BAM file from which the @RG lines in  the
    header are to be copied.'
  type: boolean
  inputBinding:
    prefix: -H
- id: r
  doc: '[ --readgroup_wise_stats ]         Use separate insert size distributions  for
    every read group. If set,  <insert-length-dist> must be a two  column text file
    contain read group  names and filenames of corresponding  insert size distributions.'
  type: boolean
  inputBinding:
    prefix: -r
- id: d
  doc: '[ --default_readgroup ]            Put all alignments into readgroup  "default".'
  type: boolean
  inputBinding:
    prefix: -d
- id: soft_clip_open_cost
  doc: (=35)       Cost for soft clipping a read.
  type: string
  inputBinding:
    prefix: --soft_clip_open_cost
- id: soft_clip_extend_cost
  doc: (=3)      Cost for "extending" a soft clip; i.e., softclipping k characters
    from a read  will cost soft_clip_open_cost+k*soft_cl ip_extend_cost.
  type: string
  inputBinding:
    prefix: --soft_clip_extend_cost
outputs: []
cwlVersion: v1.1
baseCommand:
- laser-recalibrate
