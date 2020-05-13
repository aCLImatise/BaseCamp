class: CommandLineTool
id: after.py.cwl
inputs:
- id: input_dir
  doc: the input dir to process automatically. If read1_file are input_dir are not
    specified, then current dir (.) is specified to input_dir
  type: string
  inputBinding:
    prefix: --input_dir
- id: good_output_folder
  doc: the folder to store good reads, by default it is named 'good', in the current
    directory
  type: string
  inputBinding:
    prefix: --good_output_folder
- id: bad_output_folder
  doc: the folder to store bad reads, by default it is named 'bad', in the same folder
    as good_output_folder
  type: string
  inputBinding:
    prefix: --bad_output_folder
- id: report_output_folder
  doc: the folder to store QC reports, by default it is named 'QC', in the same folder
    as good_output_folder
  type: string
  inputBinding:
    prefix: --report_output_folder
- id: read_1_flag
  doc: specify the name flag of read1, default is R1, which means a file with name
    *R1* is read1 file
  type: string
  inputBinding:
    prefix: --read1_flag
- id: read_2_flag
  doc: specify the name flag of read2, default is R2, which means a file with name
    *R2* is read2 file
  type: string
  inputBinding:
    prefix: --read2_flag
- id: index_1_flag
  doc: specify the name flag of index1, default is I1, which means a file with name
    *I1* is index2 file
  type: string
  inputBinding:
    prefix: --index1_flag
- id: index_2_flag
  doc: specify the name flag of index2, default is I2, which means a file with name
    *I2* is index2 file
  type: string
  inputBinding:
    prefix: --index2_flag
- id: trim_front
  doc: number of bases to be trimmed in the head of read. -1 means auto detect
  type: string
  inputBinding:
    prefix: --trim_front
- id: trim_tail
  doc: number of bases to be trimmed in the tail of read. -1 means auto detect
  type: string
  inputBinding:
    prefix: --trim_tail
- id: trim_pair_same
  doc: use same trimming configuration for read1 and read2 to keep their sequence
    length identical, default is true
  type: string
  inputBinding:
    prefix: --trim_pair_same
- id: qualified_quality_phred
  doc: the quality value that a base is qualifyed. Default 15 means phred base quality
    >=Q15 is qualified.
  type: string
  inputBinding:
    prefix: --qualified_quality_phred
- id: unqualified_base_limit
  doc: if exists more than unqualified_base_limit bases that quality is lower than
    qualified quality, then this read/pair is bad. Default is 60
  type: string
  inputBinding:
    prefix: --unqualified_base_limit
- id: poly_size_limit
  doc: if exists one polyX(polyG means GGGGGGGGG...), and its length is >= poly_size_limit,
    then this read/pair is bad. Default is 35
  type: string
  inputBinding:
    prefix: --poly_size_limit
- id: allow_mismatch_in_poly
  doc: the count of allowed mismatches when detection polyX. Default 2 means allow
    2 mismatches for polyX detection
  type: string
  inputBinding:
    prefix: --allow_mismatch_in_poly
- id: n_base_limit
  doc: if exists more than maxn bases have N, then this read/pair is bad. Default
    is 5
  type: string
  inputBinding:
    prefix: --n_base_limit
- id: seq_len_req
  doc: if the trimmed read is shorter than seq_len_req, then this read/pair is bad.
    Default is 35
  type: string
  inputBinding:
    prefix: --seq_len_req
- id: de_bubble
  doc: specify whether apply debubble algorithm to remove the reads in the bubbles.
    Default is False
  type: boolean
  inputBinding:
    prefix: --debubble
- id: de_bubble_dir
  doc: specify the folder to store output of debubble algorithm, default is debubble
  type: string
  inputBinding:
    prefix: --debubble_dir
- id: draw
  doc: specify whether draw the pictures or not, when use debubble or QC. Default
    is on
  type: string
  inputBinding:
    prefix: --draw
- id: barcode
  doc: specify whether deal with barcode sequencing files, default is on, which means
    all files with barcode_flag in filename will be treated as barcode sequencing
    files
  type: string
  inputBinding:
    prefix: --barcode
- id: barcode_length
  doc: specify the designed length of barcode
  type: string
  inputBinding:
    prefix: --barcode_length
- id: barcode_flag
  doc: specify the name flag of a barcoded file, default is barcode, which means a
    file with name *barcode* is a barcoded file
  type: string
  inputBinding:
    prefix: --barcode_flag
- id: barcode_verify
  doc: specify the verify sequence of a barcode which is adjunct to the barcode
  type: string
  inputBinding:
    prefix: --barcode_verify
- id: store_overlap
  doc: specify whether store only overlapped bases of the good reads
  type: string
  inputBinding:
    prefix: --store_overlap
- id: overlap_output_folder
  doc: the folder to store only overlapped bases of the good reads
  type: string
  inputBinding:
    prefix: --overlap_output_folder
- id: qc_only
  doc: if qconly is true, only QC result will be output, this can be much fast
  type: boolean
  inputBinding:
    prefix: --qc_only
- id: qc_sample
  doc: sample up to qc_sample reads when do QC, 0 means sample all reads. Default
    is 200,000
  type: string
  inputBinding:
    prefix: --qc_sample
- id: qc_km_er
  doc: specify the kmer length for KMER statistics for QC, default is 8
  type: string
  inputBinding:
    prefix: --qc_kmer
- id: no_correction
  doc: disable base correction for mismatched base pairs in overlapped areas
  type: boolean
  inputBinding:
    prefix: --no_correction
- id: mask_mismatch
  doc: set the qual num to 0 for mismatched base pairs in overlapped areas to mask
    them out
  type: boolean
  inputBinding:
    prefix: --mask_mismatch
- id: no_overlap
  doc: disable overlap analysis (usually much faster with this option)
  type: boolean
  inputBinding:
    prefix: --no_overlap
- id: gzip
  doc: force gzip compression for output, even the input is not gzip compressed
  type: boolean
  inputBinding:
    prefix: --gzip
- id: compression
  doc: set compression level (0~9) for gzip output, default is 2 (0 = best speed,
    9 = best compression).
  type: string
  inputBinding:
    prefix: --compression
outputs: []
cwlVersion: v1.1
baseCommand:
- after.py
