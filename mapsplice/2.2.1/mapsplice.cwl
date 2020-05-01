#!/usr/bin/env cwl-runner

baseCommand:
- mapsplice.py
class: CommandLineTool
cwlVersion: v1.0
id: mapsplice.py
inputs:
- doc: -1 <Read_List1> -2 <Read_List2>
  id: x
  inputBinding:
    prefix: -x
  type: string
- doc: '/--threads                   <int>        number of threads, default: 1                       '
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '/--output                    <string>     output directory, default: ./mapsplice_out'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '<string>     quality scale, phred64(default) or phred33 or solexa64      '
  id: qual_scale
  inputBinding:
    prefix: --qual-scale
  type: boolean
- doc: 'output alignment in BAM format, default: SAM format.           '
  id: bam
  inputBinding:
    prefix: --bam
  type: boolean
- doc: 'keep intermediate files, default: off     '
  id: keep_tmp
  inputBinding:
    prefix: --keep-tmp
  type: boolean
- doc: '/--seglen                    <int>        segment length, default: 25                          '
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '<int>        minimum alignment length, default: 50                '
  id: min_map_len
  inputBinding:
    prefix: --min-map-len
  type: boolean
- doc: '/max-hits                    <int>        maximum alignments per read, default:
    4              '
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: '/--min-intron                <int>        minimum intron length, default:
    50         '
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '/--max-intron                <int>        maximum intron length, default:
    300,000    '
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: 'also search for non-canonical junctions in double anchor case, default: off(same
    parameter as --non-canonical in versions previous to MapSplice 2.2.0)'
  id: non_canonical_double_anchor
  inputBinding:
    prefix: --non-canonical-double-anchor
  type: boolean
- doc: 'also search for non-canonical junctions in single anchor case, default: off'
  id: non_canonical_single_anchor
  inputBinding:
    prefix: --non-canonical-single-anchor
  type: boolean
- doc: '<int>        The stringency level of filtering splice junctions in the range
    of [1, 2].  Default is 2. 1: Less stringent filtering, with higher sensitivity
    of splice junction detection. 2: Standard filtering.  '
  id: filtering
  inputBinding:
    prefix: --filtering
  type: boolean
- doc: '/--splice-mis                <int>        Maximum number of mismatches that
    are allowed in the first/last segment crossing a splice junction in the range
    of [0, 2]. Default is 1. (Maximum number of mismatches that are allowed in the
    middle segment  crossing a splice junction is always fixed at 2.)                                 '
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: <int>        Maximum number of mismatches allowed to append a high error exonic
    segment  next to an adjacent low error segment. Default is 3.
  id: max_append_mis
  inputBinding:
    prefix: --max-append-mis
  type: boolean
- doc: '<int>        maximum insertion length, default: 6, must in range [0, 10]                                                '
  id: ins
  inputBinding:
    prefix: --ins
  type: boolean
- doc: '<int>        maximum deletion length, default: 6                                 '
  id: del
  inputBinding:
    prefix: --del
  type: boolean
- doc: '| --fusion-non-canonical           also search for fusion junction, default:
    off'
  id: fusion
  inputBinding:
    prefix: --fusion
  type: boolean
- doc: '<int>        Minimum distance between two gapped segments to be considered
    as fusion candidate.  default is 10,000. Please set this to lower value(e.g 200)
    to be more sensitive to  circular RNA detection. '
  id: min_fusion_distance
  inputBinding:
    prefix: --min-fusion-distance
  type: boolean
- doc: '<string>     Gene annotation file in GTF format, used to annotate fusion junctions.
    Can be downloaded from ENSEMBL ftp site. (e.g, for human hg19: Homo_sapiens.GRCh37.66.gtf.gz).
    Required for the detection of Circular RNA.'
  id: gene_gtf
  inputBinding:
    prefix: --gene-gtf
  type: boolean
- doc: '/--version                                print the version of MapSplice             '
  id: v
  inputBinding:
    prefix: -v
  type: boolean
