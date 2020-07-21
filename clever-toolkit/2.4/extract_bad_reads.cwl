class: CommandLineTool
id: ../../../extract_bad_reads.cwl
inputs:
- id: extract_reads_instead
  doc: '[ --all ]                        Extract all reads instead of only "bad"  ones.'
  type: boolean
  inputBinding:
    prefix: -a
- id: input_sorted_grouped
  doc: '[ --unsorted ]                   Input is not sorted by position but  grouped
    by readname, i.e., all alignments of a read pair are in subsequent lines.'
  type: boolean
  inputBinding:
    prefix: -u
- id: arg_maximal_internal
  doc: '[ --max_span ] arg (=50000)      Maximal internal segment. Read pairs with
    larger internal segment will be ignored.'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_number_default
  doc: '[ --threads ] arg (=0)           Number of threads (default: 0 = strictly  single-threaded).'
  type: boolean
  inputBinding:
    prefix: -T
- id: arg_minimum_internal
  doc: '[ --min_insert_size ] arg (=-1)  Minimum internal segment size (excluding  reads)
    for a pair to be considered good  (and thus not be extracted).'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_maximum_internal
  doc: '[ --max_insert_size ] arg (=-1)  Maximum internal segment size (excluding  reads)
    for a pair to be considered good  (and thus not be extracted).'
  type: boolean
  inputBinding:
    prefix: -M
- id: arg_minimum_mapping
  doc: '[ --min_mapq ] arg (=30)         Minimum mapping quality for good reads  (which
    are not to be extracted).'
  type: boolean
  inputBinding:
    prefix: -Q
- id: arg_maximum_allowed
  doc: '[ --max_edit_distance ] arg (=3) Maximum allowed edit distance, reads with
    larger distance will be extracted.'
  type: boolean
  inputBinding:
    prefix: -e
- id: arg_filename_write
  doc: '[ --split_file ] arg             Filename to write (gzipped) split reads  to
    (FASTQ format).'
  type: boolean
  inputBinding:
    prefix: -S
- id: arg_length_prefixsuffix
  doc: '[ --split_length ] arg (=35)     Length of prefix/suffix to be extracted  (if
    option -S is used).'
  type: boolean
  inputBinding:
    prefix: -l
- id: encode_read_groups
  doc: '[ --read_groups ]                Encode read groups in read_names (as  "<readgroup>_<name>").'
  type: boolean
  inputBinding:
    prefix: -r
- id: d
  doc: '[ --distribute_output ] arg (=0) Distribute output over multiple files  according
    to [off|readgroup|sample].'
  type: boolean
  inputBinding:
    prefix: -D
- id: also_use_default
  doc: '[ --use_hard_clipped ]           Also use hard clipped reads (default:  ignore
    hard clipped reads).'
  type: boolean
  inputBinding:
    prefix: -H
outputs: []
cwlVersion: v1.1
baseCommand:
- extract-bad-reads
