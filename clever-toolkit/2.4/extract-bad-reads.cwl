#!/usr/bin/env cwl-runner

baseCommand:
- extract-bad-reads
class: CommandLineTool
cwlVersion: v1.0
id: extract-bad-reads
inputs:
- doc: '[ --all ]                        Extract all reads instead of only "bad"  ones.'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '[ --unsorted ]                   Input is not sorted by position but  grouped
    by readname, i.e., all alignments of a read pair are in subsequent lines.'
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: '[ --max_span ] arg (=50000)      Maximal internal segment. Read pairs with
    larger internal segment will be ignored.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --threads ] arg (=0)           Number of threads (default: 0 = strictly  single-threaded).'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: '[ --min_insert_size ] arg (=-1)  Minimum internal segment size (excluding  reads)
    for a pair to be considered good  (and thus not be extracted).'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --max_insert_size ] arg (=-1)  Maximum internal segment size (excluding  reads)
    for a pair to be considered good  (and thus not be extracted).'
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: '[ --min_mapq ] arg (=30)         Minimum mapping quality for good reads  (which
    are not to be extracted).'
  id: q
  inputBinding:
    prefix: -Q
  type: boolean
- doc: '[ --max_edit_distance ] arg (=3) Maximum allowed edit distance, reads with
    larger distance will be extracted.'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '[ --split_file ] arg             Filename to write (gzipped) split reads  to
    (FASTQ format).'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: '[ --split_length ] arg (=35)     Length of prefix/suffix to be extracted  (if
    option -S is used).'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --read_groups ]                Encode read groups in read_names (as  "<readgroup>_<name>").'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --distribute_output ] arg (=0) Distribute output over multiple files  according
    to [off|readgroup|sample].'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: '[ --use_hard_clipped ]           Also use hard clipped reads (default:  ignore
    hard clipped reads).'
  id: h
  inputBinding:
    prefix: -H
  type: boolean
