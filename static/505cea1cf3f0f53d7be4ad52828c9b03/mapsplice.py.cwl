class: CommandLineTool
id: mapsplice.py.cwl
inputs:
- id: in_chromosome_dir
  doc: <string>     reference sequence directory
  type: boolean?
  inputBinding:
    prefix: --chromosome-dir
- id: in_string_path_prefix
  doc: <string>     path and prefix of bowtie index
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_string_end_
  doc: /                            <string>     end 1 reads / single end reads
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_string_end_reads
  doc: /                            <string>     end 2 reads
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_threads
  doc: '<int>        number of threads, default: 1'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: '<string>     output directory, default: ./mapsplice_out'
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_qual_scale
  doc: <string>     quality scale, phred64(default) or phred33 or solexa64
  type: boolean?
  inputBinding:
    prefix: --qual-scale
- id: in_bam
  doc: 'output alignment in BAM format, default: SAM format.'
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_keep_tmp
  doc: 'keep intermediate files, default: off'
  type: boolean?
  inputBinding:
    prefix: --keep-tmp
- id: in_se_glen
  doc: '<int>        segment length, default: 25'
  type: boolean?
  inputBinding:
    prefix: --seglen
- id: in_min_map_len
  doc: '<int>        minimum alignment length, default: 50'
  type: boolean?
  inputBinding:
    prefix: --min-map-len
- id: in_maxhits_int_alignments
  doc: '/max-hits                    <int>        maximum alignments per read, default:
    4'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_min_intron
  doc: '<int>        minimum intron length, default: 50'
  type: boolean?
  inputBinding:
    prefix: --min-intron
- id: in_max_intron
  doc: '<int>        maximum intron length, default: 300,000'
  type: boolean?
  inputBinding:
    prefix: --max-intron
- id: in_non_canonical_double_anchor
  doc: 'also search for non-canonical junctions in double anchor case, default: off(same
    parameter as --non-canonical in versions previous to MapSplice 2.2.0)'
  type: boolean?
  inputBinding:
    prefix: --non-canonical-double-anchor
- id: in_non_canonical_single_anchor
  doc: 'also search for non-canonical junctions in single anchor case, default: off'
  type: boolean?
  inputBinding:
    prefix: --non-canonical-single-anchor
- id: in_filtering
  doc: "<int>        The stringency level of filtering splice junctions in the range\
    \ of [1, 2].\nDefault is 2.\n1: Less stringent filtering, with higher sensitivity\
    \ of splice junction detection.\n2: Standard filtering."
  type: boolean?
  inputBinding:
    prefix: --filtering
- id: in_splice_mis
  doc: "<int>        Maximum number of mismatches that are allowed in the first/last\
    \ segment\ncrossing a splice junction in the range of [0, 2]. Default is 1.\n\
    (Maximum number of mismatches that are allowed in the middle segment\ncrossing\
    \ a splice junction is always fixed at 2.)"
  type: boolean?
  inputBinding:
    prefix: --splice-mis
- id: in_max_append_mis
  doc: "<int>        Maximum number of mismatches allowed to append a high error exonic\
    \ segment\nnext to an adjacent low error segment. Default is 3."
  type: boolean?
  inputBinding:
    prefix: --max-append-mis
- id: in_ins
  doc: '<int>        maximum insertion length, default: 6, must in range [0, 10]'
  type: boolean?
  inputBinding:
    prefix: --ins
- id: in_del
  doc: '<int>        maximum deletion length, default: 6'
  type: boolean?
  inputBinding:
    prefix: --del
- id: in_fusion_non_canonical
  doc: 'also search for fusion junction, default: off'
  type: boolean?
  inputBinding:
    prefix: --fusion-non-canonical
- id: in_min_fusion_distance
  doc: "<int>        Minimum distance between two gapped segments to be considered\
    \ as fusion candidate.\ndefault is 10,000. Please set this to lower value(e.g\
    \ 200) to be more sensitive to\ncircular RNA detection."
  type: boolean?
  inputBinding:
    prefix: --min-fusion-distance
- id: in_gene_gtf
  doc: "<string>     Gene annotation file in GTF format, used to annotate fusion junctions.\
    \ Can be downloaded\nfrom ENSEMBL ftp site. (e.g, for human hg19: Homo_sapiens.GRCh37.66.gtf.gz).\
    \ Required\nfor the detection of Circular RNA."
  type: boolean?
  inputBinding:
    prefix: --gene-gtf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: '<string>     output directory, default: ./mapsplice_out'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- mapsplice.py
