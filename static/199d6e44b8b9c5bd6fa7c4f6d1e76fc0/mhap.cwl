class: CommandLineTool
id: mhap.cwl
inputs:
- id: in_filter_threshold
  doc: ", default = 1.0E-5\n[double], The cutoff at which the k-mer in the k-mer filter\
    \ file is considered repetitive. This value for a specific k-mer is specified\
    \ in the second column in the filter file. If no filter file is provided, this\
    \ option is ignored."
  type: boolean?
  inputBinding:
    prefix: --filter-threshold
- id: in_max_shift
  doc: ", default = 0.2\n[double], Region size to the left and right of the estimated\
    \ overlap, as derived from the median shift and sequence length, where a k-mer\
    \ matches are still considered valid. Second stage filter only."
  type: boolean?
  inputBinding:
    prefix: --max-shift
- id: in_min_olap_length
  doc: ", default = 116\n[int], The minimum length of the read that used for overlapping.\
    \ Used to filter out short reads from FASTA file."
  type: boolean?
  inputBinding:
    prefix: --min-olap-length
- id: in_min_store_length
  doc: ", default = 0\n[int], The minimum length of the read that is stored in the\
    \ box. Used to filter out short reads from FASTA file."
  type: boolean?
  inputBinding:
    prefix: --min-store-length
- id: in_no_rc
  doc: ", default = false\nDo not store or do comparison of the reverse compliment\
    \ strings."
  type: boolean?
  inputBinding:
    prefix: --no-rc
- id: in_no_self
  doc: ", default = false\nDo not compute the overlaps between sequences inside a\
    \ box. Should be used when the to and from sequences are coming from different\
    \ files."
  type: boolean?
  inputBinding:
    prefix: --no-self
- id: in_no_tf
  doc: ", default = false\nDo not perform the tf weighing, in the tf-idf weighing."
  type: boolean?
  inputBinding:
    prefix: --no-tf
- id: in_num_hashes
  doc: ", default = 512\n[int], Number of min-mers to be used in MinHashing."
  type: boolean?
  inputBinding:
    prefix: --num-hashes
- id: in_num_min_matches
  doc: ", default = 3\n[int], Minimum # min-mer that must be shared before computing\
    \ second stage filter. Any sequences below that value are considered non-overlapping."
  type: boolean?
  inputBinding:
    prefix: --num-min-matches
- id: in_num_threads
  doc: ", default = 8\n[int], nNumber of threads to use for computation. Typically\
    \ set to #cores."
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_ordered_km_er_size
  doc: ", default = 12\n[int] The size of k-mers used in the ordered second stage\
    \ filter."
  type: boolean?
  inputBinding:
    prefix: --ordered-kmer-size
- id: in_ordered_sketch_size
  doc: ", default = 1536\n[int] The sketch size for second stage filter."
  type: boolean?
  inputBinding:
    prefix: --ordered-sketch-size
- id: in_repeat_idf_scale
  doc: ", default = 3.0\n[double] The upper range of the idf (from tf-idf) scale.\
    \ The full scale will be [1,X], where X is the parameter."
  type: boolean?
  inputBinding:
    prefix: --repeat-idf-scale
- id: in_repeat_weight
  doc: ", default = 0.9\n[double] Repeat suppression strength for tf-idf weighing.\
    \ <0.0 do unweighted MinHash (version 1.0), >=1.0 do only the tf weighing. To\
    \ perform no idf weighting, do no supply -f option."
  type: boolean?
  inputBinding:
    prefix: --repeat-weight
- id: in_settings
  doc: ", default = 0\nSet all unset parameters for the default settings. Same defaults\
    \ are applied to Nanopore and Pacbio reads. 0) None, 1) Default, 2) Fast, 3) Sensitive."
  type: boolean?
  inputBinding:
    prefix: --settings
- id: in_store_full_id
  doc: ", default = false\nStore full IDs as seen in FASTA files, rather than storing\
    \ just the sequence position in the file. Some FASTA files have long IDS, slowing\
    \ output of results. This options is ignored when using compressed file format.\
    \ Indexed file (-s) is indexed first, followed by -q files in alphabetical order."
  type: File?
  inputBinding:
    prefix: --store-full-id
- id: in_supress_noise
  doc: ", default = 0\n[int] 0) Does nothing, 1) completely removes any k-mers not\
    \ specified in the filter file, 2) supresses k-mers not specified in the filter\
    \ file, similar to repeats."
  type: boolean?
  inputBinding:
    prefix: --supress-noise
- id: in_threshold
  doc: ", default = 0.78\n[double], The threshold cutoff for the second stage sort-merge\
    \ filter. This is based on the identity score computed from the Jaccard distance\
    \ of k-mers (size given by ordered-kmer-size) in the overlapping regions."
  type: boolean?
  inputBinding:
    prefix: --threshold
- id: in_default_kmer_file
  doc: ", default = \"\"\nk-mer filter file used for filtering out highly repetative\
    \ k-mers. Must be sorted in descending order of frequency (second column)."
  type: File?
  inputBinding:
    prefix: -f
- id: in_default_size_used
  doc: ", default = 16\n[int], k-mer size used for MinHashing. The k-mer size for\
    \ second stage filter is seperate, and can also be modified."
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_only_directory_containing
  doc: ", default = \"\"\nUsage 2 only. The directory containing FASTA files that\
    \ should be converted to binary format for storage."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_default_usage_fasta
  doc: ", default = \"\"\nUsage 1: The FASTA file of reads, or a directory of files,\
    \ that will be compared to the set of reads in the box (see -s). Usage 2: The\
    \ output directory for the binary formatted dat files."
  type: File?
  inputBinding:
    prefix: -q
- id: in_only_fasta_binary
  doc: ", default = \"\"\nUsage 1 only. The FASTA or binary dat file (see Usage 2)\
    \ of reads that will be stored in a box, and that all subsequent reads will be\
    \ compared to.\n"
  type: boolean?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_store_full_id
  doc: ", default = false\nStore full IDs as seen in FASTA files, rather than storing\
    \ just the sequence position in the file. Some FASTA files have long IDS, slowing\
    \ output of results. This options is ignored when using compressed file format.\
    \ Indexed file (-s) is indexed first, followed by -q files in alphabetical order."
  type: File?
  outputBinding:
    glob: $(inputs.in_store_full_id)
- id: out_default_kmer_file
  doc: ", default = \"\"\nk-mer filter file used for filtering out highly repetative\
    \ k-mers. Must be sorted in descending order of frequency (second column)."
  type: File?
  outputBinding:
    glob: $(inputs.in_default_kmer_file)
- id: out_default_usage_fasta
  doc: ", default = \"\"\nUsage 1: The FASTA file of reads, or a directory of files,\
    \ that will be compared to the set of reads in the box (see -s). Usage 2: The\
    \ output directory for the binary formatted dat files."
  type: File?
  outputBinding:
    glob: $(inputs.in_default_usage_fasta)
hints: []
cwlVersion: v1.1
baseCommand:
- mhap
