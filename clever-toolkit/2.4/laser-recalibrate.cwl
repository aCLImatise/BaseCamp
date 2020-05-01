#!/usr/bin/env cwl-runner

baseCommand:
- laser-recalibrate
class: CommandLineTool
cwlVersion: v1.0
id: laser-recalibrate
inputs:
- doc: ''
  id: insert_length_dist
  inputBinding:
    position: 0
  type: string
- doc: '[ --insertion_length_dist ] arg    File name of empiric insertion size  distribution.'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: '[ --deletion_length_dist ] arg     File name of empiric deletion size  distribution.'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: '[ --snp ] arg                      File to read SNP positions from.  Mismatches
    at these positions will not  incur alignment costs.'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: '[ --variations ] arg               File to read known indels from. These  indels
    will not incur alignment costs.  Will also be taken into account for  internal
    segment size probability.'
  id: v
  inputBinding:
    prefix: -V
  type: boolean
- doc: '[ --phred_offset ] arg (=33)       Value to subtract from ASCII code to  get
    the PHRED quality.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --max_pair_distance ] arg (=50000) Maximum distance of reads in a  "regular"
    pair. If distance is  larger/interchromosomal, reads can  still be paired, but
    only if option  --distant-pairs is given and no pair  with smaller distance is
    present.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: Allow long distance and  interchromosomal alignments to be  paired.
  id: distant_pairs
  inputBinding:
    prefix: --distant-pairs
  type: boolean
- doc: '[ --omit_alt_cigars ]              Omit alternative cigar strings stored  in
    YA tags.'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --omit_secondary_aln ]           Omit secondary alignments.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: "[ --m_in_cigar ]                   Use M for matches and mismatches in  CIGAR\
    \ strings (instead of '=' and 'X')."
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: (=0)                Only report properly paired reads for  which each read
    has a MAPQ above the  given level. Other alignments will be  omitted. Requires
    option -s.
  id: mapq_cut_off
  inputBinding:
    prefix: --mapq_cutoff
  type: string
- doc: '[ --readgroup_from_name ]          Convert readnames of the format  <readgroup>_<name>
    back to <name> and  set respective read group tag.'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '[ --readgroup_header ] arg         BAM file from which the @RG lines in  the
    header are to be copied.'
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: '[ --readgroup_wise_stats ]         Use separate insert size distributions  for
    every read group. If set,  <insert-length-dist> must be a two  column text file
    contain read group  names and filenames of corresponding  insert size distributions.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --default_readgroup ]            Put all alignments into readgroup  "default".'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: (=35)       Cost for soft clipping a read.
  id: soft_clip_open_cost
  inputBinding:
    prefix: --soft_clip_open_cost
  type: string
- doc: (=3)      Cost for "extending" a soft clip; i.e., softclipping k characters
    from a read  will cost soft_clip_open_cost+k*soft_cl ip_extend_cost.
  id: soft_clip_extend_cost
  inputBinding:
    prefix: --soft_clip_extend_cost
  type: string
