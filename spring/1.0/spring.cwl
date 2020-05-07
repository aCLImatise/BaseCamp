class: CommandLineTool
id: spring.cwl
inputs:
- id: c
  doc: '[ --compress ]               compress'
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: '[ --decompress ]             decompress'
  type: boolean
  inputBinding:
    prefix: -d
- id: decompress_range
  doc: --decompress-range start end (optional) decompress only reads (or read  pairs
    for PE datasets) from start to end  (both inclusive) (1 <= start <= end <=  num_reads
    (or num_read_pairs for PE)). If -r  was specified during compression, the range  of
    reads does not correspond to the original  order of reads in the FASTQ file.
  type: string
  inputBinding:
    prefix: --decompress-range
- id: i
  doc: '[ --input-file ] arg         input file name (two files for paired end)'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: '[ --output-file ] arg        output file name (for paired end  decompression,
    if only one file is specified, two output files will be created by suffixing .1
    and .2.)'
  type: boolean
  inputBinding:
    prefix: -o
- id: w
  doc: '[ --working-dir ] arg (=.)   directory to create temporary files (default  current
    directory)'
  type: boolean
  inputBinding:
    prefix: -w
- id: t
  doc: '[ --num-threads ] arg (=8)   number of threads (default 8)'
  type: boolean
  inputBinding:
    prefix: -t
- id: r
  doc: '[ --allow-read-reordering ]  do not retain read order during compression  (paired
    reads still remain paired)'
  type: boolean
  inputBinding:
    prefix: -r
- id: no_quality
  doc: do not retain quality values during  compression
  type: boolean
  inputBinding:
    prefix: --no-quality
- id: no_ids
  doc: do not retain read identifiers during  compression
  type: boolean
  inputBinding:
    prefix: --no-ids
- id: q
  doc: '[ --quality-opts ] arg       quality mode: possible modes are 1. -q lossless
    (default) 2. -q qvz qv_ratio (QVZ lossy compression,  parameter qv_ratio roughly
    corresponds to  bits used per quality value) 3. -q ill_bin (Illumina 8-level binning)
    4. -q binary thr high low (binary (2-level)  thresholding, quality binned to high
    if >=  thr and to low if < thr)'
  type: boolean
  inputBinding:
    prefix: -q
- id: l
  doc: '[ --long ]                   Use for compression of arbitrarily long read  lengths.
    Can also provide better compression  for reads with significant number of indels.  -r
    disabled in this mode. For Illumina short  reads, compression is better without
    -l flag.'
  type: boolean
  inputBinding:
    prefix: -l
- id: g
  doc: '[ --gzipped-fastq ]          enable if compression input is gzipped fastq  or
    to output gzipped fastq during  decompression'
  type: boolean
  inputBinding:
    prefix: -g
- id: fast_a_input
  doc: enable if compression input is fasta file  (i.e., no qualities)
  type: boolean
  inputBinding:
    prefix: --fasta-input
outputs: []
cwlVersion: v1.1
baseCommand:
- spring
