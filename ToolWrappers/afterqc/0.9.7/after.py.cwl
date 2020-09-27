class: CommandLineTool
id: after.py.cwl
inputs:
- id: in_read_one_file
  doc: "file name of read1, required. If input_dir is\nspecified, then this arg is\
    \ ignored."
  type: File
  inputBinding:
    prefix: --read1_file
- id: in_read_two_file
  doc: "file name of read2, if paired. If input_dir is\nspecified, then this arg is\
    \ ignored."
  type: File
  inputBinding:
    prefix: --read2_file
- id: in_index_one_file
  doc: "file name of 7' index. If input_dir is specified, then\nthis arg is ignored."
  type: File
  inputBinding:
    prefix: --index1_file
- id: in_index_two_file
  doc: "file name of 5' index. If input_dir is specified, then\nthis arg is ignored."
  type: File
  inputBinding:
    prefix: --index2_file
- id: in_input_dir
  doc: "the input dir to process automatically. If read1_file\nare input_dir are not\
    \ specified, then current dir (.)\nis specified to input_dir"
  type: long
  inputBinding:
    prefix: --input_dir
- id: in_good_output_folder
  doc: "the folder to store good reads, by default it is named\n'good', in the current\
    \ directory"
  type: Directory
  inputBinding:
    prefix: --good_output_folder
- id: in_bad_output_folder
  doc: "the folder to store bad reads, by default it is named\n'bad', in the same\
    \ folder as good_output_folder"
  type: Directory
  inputBinding:
    prefix: --bad_output_folder
- id: in_report_output_folder
  doc: "the folder to store QC reports, by default it is named\n'QC', in the same\
    \ folder as good_output_folder"
  type: Directory
  inputBinding:
    prefix: --report_output_folder
- id: in_read_one_flag
  doc: "specify the name flag of read1, default is R1, which\nmeans a file with name\
    \ *R1* is read1 file"
  type: long
  inputBinding:
    prefix: --read1_flag
- id: in_read_two_flag
  doc: "specify the name flag of read2, default is R2, which\nmeans a file with name\
    \ *R2* is read2 file"
  type: long
  inputBinding:
    prefix: --read2_flag
- id: in_index_one_flag
  doc: "specify the name flag of index1, default is I1, which\nmeans a file with name\
    \ *I1* is index2 file"
  type: long
  inputBinding:
    prefix: --index1_flag
- id: in_index_two_flag
  doc: "specify the name flag of index2, default is I2, which\nmeans a file with name\
    \ *I2* is index2 file"
  type: long
  inputBinding:
    prefix: --index2_flag
- id: in_trim_front
  doc: "number of bases to be trimmed in the head of read. -1\nmeans auto detect"
  type: long
  inputBinding:
    prefix: --trim_front
- id: in_trim_tail
  doc: "number of bases to be trimmed in the tail of read. -1\nmeans auto detect"
  type: long
  inputBinding:
    prefix: --trim_tail
- id: in_trim_pair_same
  doc: "use same trimming configuration for read1 and read2 to\nkeep their sequence\
    \ length identical, default is true"
  type: long
  inputBinding:
    prefix: --trim_pair_same
- id: in_qualified_quality_phred
  doc: "the quality value that a base is qualifyed. Default 15\nmeans phred base quality\
    \ >=Q15 is qualified."
  type: long
  inputBinding:
    prefix: --qualified_quality_phred
- id: in_unqualified_base_limit
  doc: "if exists more than unqualified_base_limit bases that\nquality is lower than\
    \ qualified quality, then this\nread/pair is bad. Default is 60"
  type: long
  inputBinding:
    prefix: --unqualified_base_limit
- id: in_poly_size_limit
  doc: "if exists one polyX(polyG means GGGGGGGGG...), and its\nlength is >= poly_size_limit,\
    \ then this read/pair is\nbad. Default is 35"
  type: long
  inputBinding:
    prefix: --poly_size_limit
- id: in_allow_mismatch_in_poly
  doc: "the count of allowed mismatches when detection polyX.\nDefault 2 means allow\
    \ 2 mismatches for polyX detection"
  type: long
  inputBinding:
    prefix: --allow_mismatch_in_poly
- id: in_n_base_limit
  doc: "if exists more than maxn bases have N, then this\nread/pair is bad. Default\
    \ is 5"
  type: long
  inputBinding:
    prefix: --n_base_limit
- id: in_seq_len_req
  doc: "if the trimmed read is shorter than seq_len_req, then\nthis read/pair is bad.\
    \ Default is 35"
  type: long
  inputBinding:
    prefix: --seq_len_req
- id: in_de_bubble
  doc: "specify whether apply debubble algorithm to remove the\nreads in the bubbles.\
    \ Default is False"
  type: boolean
  inputBinding:
    prefix: --debubble
- id: in_de_bubble_dir
  doc: "specify the folder to store output of debubble\nalgorithm, default is debubble"
  type: Directory
  inputBinding:
    prefix: --debubble_dir
- id: in_draw
  doc: "specify whether draw the pictures or not, when use\ndebubble or QC. Default\
    \ is on"
  type: string
  inputBinding:
    prefix: --draw
- id: in_barcode
  doc: "specify whether deal with barcode sequencing files,\ndefault is on, which\
    \ means all files with barcode_flag\nin filename will be treated as barcode sequencing\n\
    files"
  type: File
  inputBinding:
    prefix: --barcode
- id: in_barcode_length
  doc: specify the designed length of barcode
  type: long
  inputBinding:
    prefix: --barcode_length
- id: in_barcode_flag
  doc: "specify the name flag of a barcoded file, default is\nbarcode, which means\
    \ a file with name *barcode* is a\nbarcoded file"
  type: File
  inputBinding:
    prefix: --barcode_flag
- id: in_barcode_verify
  doc: "specify the verify sequence of a barcode which is\nadjunct to the barcode"
  type: string
  inputBinding:
    prefix: --barcode_verify
- id: in_store_overlap
  doc: "specify whether store only overlapped bases of the\ngood reads"
  type: string
  inputBinding:
    prefix: --store_overlap
- id: in_overlap_output_folder
  doc: "the folder to store only overlapped bases of the good\nreads"
  type: Directory
  inputBinding:
    prefix: --overlap_output_folder
- id: in_qc_only
  doc: "if qconly is true, only QC result will be output, this\ncan be much fast"
  type: boolean
  inputBinding:
    prefix: --qc_only
- id: in_qc_sample
  doc: "sample up to qc_sample reads when do QC, 0 means\nsample all reads. Default\
    \ is 200,000"
  type: long
  inputBinding:
    prefix: --qc_sample
- id: in_qc_km_er
  doc: "specify the kmer length for KMER statistics for QC,\ndefault is 8"
  type: long
  inputBinding:
    prefix: --qc_kmer
- id: in_no_correction
  doc: "disable base correction for mismatched base pairs in\noverlapped areas"
  type: boolean
  inputBinding:
    prefix: --no_correction
- id: in_mask_mismatch
  doc: "set the qual num to 0 for mismatched base pairs in\noverlapped areas to mask\
    \ them out"
  type: boolean
  inputBinding:
    prefix: --mask_mismatch
- id: in_no_overlap
  doc: "disable overlap analysis (usually much faster with\nthis option)"
  type: boolean
  inputBinding:
    prefix: --no_overlap
- id: in_gzip
  doc: "force gzip compression for output, even the input is\nnot gzip compressed"
  type: boolean
  inputBinding:
    prefix: --gzip
- id: in_compression
  doc: "set compression level (0~9) for gzip output, default\nis 2 (0 = best speed,\
    \ 9 = best compression).\n"
  type: long
  inputBinding:
    prefix: --compression
- id: in_automatic
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filtering
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_good_output_folder
  doc: "the folder to store good reads, by default it is named\n'good', in the current\
    \ directory"
  type: Directory
  outputBinding:
    glob: $(inputs.in_good_output_folder)
- id: out_bad_output_folder
  doc: "the folder to store bad reads, by default it is named\n'bad', in the same\
    \ folder as good_output_folder"
  type: Directory
  outputBinding:
    glob: $(inputs.in_bad_output_folder)
- id: out_report_output_folder
  doc: "the folder to store QC reports, by default it is named\n'QC', in the same\
    \ folder as good_output_folder"
  type: Directory
  outputBinding:
    glob: $(inputs.in_report_output_folder)
- id: out_de_bubble_dir
  doc: "specify the folder to store output of debubble\nalgorithm, default is debubble"
  type: Directory
  outputBinding:
    glob: $(inputs.in_de_bubble_dir)
- id: out_overlap_output_folder
  doc: "the folder to store only overlapped bases of the good\nreads"
  type: Directory
  outputBinding:
    glob: $(inputs.in_overlap_output_folder)
cwlVersion: v1.1
baseCommand:
- after.py
