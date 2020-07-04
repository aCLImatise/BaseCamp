class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mapsplice.py.cwl
inputs:
- id: c_slash_chromosome_dir
  doc: '<string>     reference sequence directory                       '
  type: boolean
  inputBinding:
    prefix: -c/--chromosome-dir
- id: string_path_prefix
  doc: '<string>     path and prefix of bowtie index                     '
  type: boolean
  inputBinding:
    prefix: -x
- id: one_slash
  doc: '<string>     end 1 reads / single end reads                      '
  type: boolean
  inputBinding:
    prefix: -1/
- id: two_slash
  doc: '<string>     end 2 reads                                         '
  type: boolean
  inputBinding:
    prefix: -2/
- id: p_slash_threads
  doc: '<int>        number of threads, default: 1                       '
  type: boolean
  inputBinding:
    prefix: -p/--threads
- id: oslash_output
  doc: '<string>     output directory, default: ./mapsplice_out'
  type: boolean
  inputBinding:
    prefix: -o/--output
- id: qual_scale
  doc: '<string>     quality scale, phred64(default) or phred33 or solexa64      '
  type: boolean
  inputBinding:
    prefix: --qual-scale
- id: bam
  doc: 'output alignment in BAM format, default: SAM format.           '
  type: boolean
  inputBinding:
    prefix: --bam
- id: keep_tmp
  doc: 'keep intermediate files, default: off     '
  type: boolean
  inputBinding:
    prefix: --keep-tmp
- id: s_slash_se_glen
  doc: '<int>        segment length, default: 25                          '
  type: boolean
  inputBinding:
    prefix: -s/--seglen
- id: min_map_len
  doc: '<int>        minimum alignment length, default: 50                '
  type: boolean
  inputBinding:
    prefix: --min-map-len
- id: k_slash_max_hits
  doc: '<int>        maximum alignments per read, default: 4              '
  type: boolean
  inputBinding:
    prefix: -k/max-hits
- id: i_slash_min_intron
  doc: '<int>        minimum intron length, default: 50         '
  type: boolean
  inputBinding:
    prefix: -i/--min-intron
- id: i_slash_max_intron
  doc: '<int>        maximum intron length, default: 300,000    '
  type: boolean
  inputBinding:
    prefix: -I/--max-intron
- id: non_canonical_double_anchor
  doc: 'also search for non-canonical junctions in double anchor case, default: off(same
    parameter as --non-canonical in versions previous to MapSplice 2.2.0)'
  type: boolean
  inputBinding:
    prefix: --non-canonical-double-anchor
- id: non_canonical_single_anchor
  doc: 'also search for non-canonical junctions in single anchor case, default: off'
  type: boolean
  inputBinding:
    prefix: --non-canonical-single-anchor
- id: filtering
  doc: '<int>        The stringency level of filtering splice junctions in the range
    of [1, 2].  Default is 2. 1: Less stringent filtering, with higher sensitivity
    of splice junction detection. 2: Standard filtering.  '
  type: boolean
  inputBinding:
    prefix: --filtering
- id: m_slash_splice_mis
  doc: '<int>        Maximum number of mismatches that are allowed in the first/last
    segment crossing a splice junction in the range of [0, 2]. Default is 1. (Maximum
    number of mismatches that are allowed in the middle segment  crossing a splice
    junction is always fixed at 2.)                                 '
  type: boolean
  inputBinding:
    prefix: -m/--splice-mis
- id: max_append_mis
  doc: <int>        Maximum number of mismatches allowed to append a high error exonic
    segment  next to an adjacent low error segment. Default is 3.
  type: boolean
  inputBinding:
    prefix: --max-append-mis
- id: ins
  doc: '<int>        maximum insertion length, default: 6, must in range [0, 10]                                                '
  type: boolean
  inputBinding:
    prefix: --ins
- id: del
  doc: '<int>        maximum deletion length, default: 6                                 '
  type: boolean
  inputBinding:
    prefix: --del
- id: fusion
  doc: '| --fusion-non-canonical           also search for fusion junction, default:
    off'
  type: boolean
  inputBinding:
    prefix: --fusion
- id: min_fusion_distance
  doc: '<int>        Minimum distance between two gapped segments to be considered
    as fusion candidate.  default is 10,000. Please set this to lower value(e.g 200)
    to be more sensitive to  circular RNA detection. '
  type: boolean
  inputBinding:
    prefix: --min-fusion-distance
- id: gene_gtf
  doc: '<string>     Gene annotation file in GTF format, used to annotate fusion junctions.
    Can be downloaded from ENSEMBL ftp site. (e.g, for human hg19: Homo_sapiens.GRCh37.66.gtf.gz).
    Required for the detection of Circular RNA.'
  type: boolean
  inputBinding:
    prefix: --gene-gtf
- id: h_slash_help
  doc: 'print the usage message                    '
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: v_slash_version
  doc: 'print the version of MapSplice             '
  type: boolean
  inputBinding:
    prefix: -v/--version
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- mapsplice.py
