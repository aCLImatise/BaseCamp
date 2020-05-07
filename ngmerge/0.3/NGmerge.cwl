class: CommandLineTool
id: NGmerge.cwl
inputs:
- id: o
  doc: "<file>       Output FASTQ file(s): - in 'stitch' mode (def.), the file of\
    \ merged reads - in 'adapter-removal' mode (-a), the output files will be <file>_1.fastq\
    \ and <file>_2.fastq"
  type: boolean
  inputBinding:
    prefix: -o
- id: m
  doc: <int>        Minimum overlap of the paired-end reads (def. 20)
  type: boolean
  inputBinding:
    prefix: -m
- id: p
  doc: <float>      Mismatches to allow in the overlapped region (a fraction of the
    overlap length; def. 0.10)
  type: boolean
  inputBinding:
    prefix: -p
- id: a
  doc: Use 'adapter-removal' mode (also sets -d option)
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: Option to check for dovetailing (with 3' overhangs)
  type: boolean
  inputBinding:
    prefix: -d
- id: e
  doc: <int>        Minimum overlap of dovetailed alignments (def. 50)
  type: boolean
  inputBinding:
    prefix: -e
- id: s
  doc: Option to produce shortest stitched read
  type: boolean
  inputBinding:
    prefix: -s
- id: l
  doc: <file>       Log file for stitching results of each read pair
  type: boolean
  inputBinding:
    prefix: -l
- id: f
  doc: <file>       FASTQ files for reads that failed stitching (output as <file>_1.fastq
    and <file>_2.fastq)
  type: boolean
  inputBinding:
    prefix: -f
- id: c
  doc: <file>       Log file for dovetailed reads (adapter sequences)
  type: boolean
  inputBinding:
    prefix: -c
- id: j
  doc: <file>       Log file for formatted alignments of merged reads
  type: boolean
  inputBinding:
    prefix: -j
- id: z
  doc: /-y            Option to gzip (-z) or not (-y) FASTQ output(s)
  type: boolean
  inputBinding:
    prefix: -z
- id: i
  doc: Option to produce interleaved FASTQ output(s)
  type: boolean
  inputBinding:
    prefix: -i
- id: w
  doc: <file>       Use given error profile for merged qual scores
  type: boolean
  inputBinding:
    prefix: -w
- id: g
  doc: Use 'fastq-join' method for merged qual scores
  type: boolean
  inputBinding:
    prefix: -g
- id: q
  doc: <int>        FASTQ quality offset (def. 33)
  type: boolean
  inputBinding:
    prefix: -q
- id: u
  doc: <int>        Maximum input quality score (0-based; def. 40)
  type: boolean
  inputBinding:
    prefix: -u
- id: n
  doc: <int>        Number of threads to use (def. 1)
  type: boolean
  inputBinding:
    prefix: -n
- id: v
  doc: Option to print status updates/counts to stderr
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- NGmerge
