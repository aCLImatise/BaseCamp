version 1.0

task After.py {
  input {
    String? read_one_file
    String? read_two_file
    String? index_one_file
    String? index_two_file
    String? input_dir
    String? good_output_folder
    String? bad_output_folder
    String? report_output_folder
    String? read_one_flag
    String? read_two_flag
    String? index_one_flag
    String? index_two_flag
    String? trim_front
    String? trim_tail
    String? trim_pair_same
    String? qualified_quality_phred
    String? unqualified_base_limit
    String? poly_size_limit
    String? allow_mismatch_in_poly
    String? n_base_limit
    String? seq_len_req
    Boolean? de_bubble
    String? de_bubble_dir
    String? draw
    String? barcode
    String? barcode_length
    String? barcode_flag
    String? barcode_verify
    String? store_overlap
    String? overlap_output_folder
    Boolean? qc_only
    String? qc_sample
    String? qc_km_er
    Boolean? no_correction
    Boolean? mask_mismatch
    Boolean? no_overlap
    Boolean? gzip
    String? compression
    String automatic
    String filtering
  }
  command <<<
    after.py \
      ~{automatic} \
      ~{filtering} \
      ~{if defined(read_one_file) then ("--read1_file " +  '"' + read_one_file + '"') else ""} \
      ~{if defined(read_two_file) then ("--read2_file " +  '"' + read_two_file + '"') else ""} \
      ~{if defined(index_one_file) then ("--index1_file " +  '"' + index_one_file + '"') else ""} \
      ~{if defined(index_two_file) then ("--index2_file " +  '"' + index_two_file + '"') else ""} \
      ~{if defined(input_dir) then ("--input_dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(good_output_folder) then ("--good_output_folder " +  '"' + good_output_folder + '"') else ""} \
      ~{if defined(bad_output_folder) then ("--bad_output_folder " +  '"' + bad_output_folder + '"') else ""} \
      ~{if defined(report_output_folder) then ("--report_output_folder " +  '"' + report_output_folder + '"') else ""} \
      ~{if defined(read_one_flag) then ("--read1_flag " +  '"' + read_one_flag + '"') else ""} \
      ~{if defined(read_two_flag) then ("--read2_flag " +  '"' + read_two_flag + '"') else ""} \
      ~{if defined(index_one_flag) then ("--index1_flag " +  '"' + index_one_flag + '"') else ""} \
      ~{if defined(index_two_flag) then ("--index2_flag " +  '"' + index_two_flag + '"') else ""} \
      ~{if defined(trim_front) then ("--trim_front " +  '"' + trim_front + '"') else ""} \
      ~{if defined(trim_tail) then ("--trim_tail " +  '"' + trim_tail + '"') else ""} \
      ~{if defined(trim_pair_same) then ("--trim_pair_same " +  '"' + trim_pair_same + '"') else ""} \
      ~{if defined(qualified_quality_phred) then ("--qualified_quality_phred " +  '"' + qualified_quality_phred + '"') else ""} \
      ~{if defined(unqualified_base_limit) then ("--unqualified_base_limit " +  '"' + unqualified_base_limit + '"') else ""} \
      ~{if defined(poly_size_limit) then ("--poly_size_limit " +  '"' + poly_size_limit + '"') else ""} \
      ~{if defined(allow_mismatch_in_poly) then ("--allow_mismatch_in_poly " +  '"' + allow_mismatch_in_poly + '"') else ""} \
      ~{if defined(n_base_limit) then ("--n_base_limit " +  '"' + n_base_limit + '"') else ""} \
      ~{if defined(seq_len_req) then ("--seq_len_req " +  '"' + seq_len_req + '"') else ""} \
      ~{true="--debubble" false="" de_bubble} \
      ~{if defined(de_bubble_dir) then ("--debubble_dir " +  '"' + de_bubble_dir + '"') else ""} \
      ~{if defined(draw) then ("--draw " +  '"' + draw + '"') else ""} \
      ~{if defined(barcode) then ("--barcode " +  '"' + barcode + '"') else ""} \
      ~{if defined(barcode_length) then ("--barcode_length " +  '"' + barcode_length + '"') else ""} \
      ~{if defined(barcode_flag) then ("--barcode_flag " +  '"' + barcode_flag + '"') else ""} \
      ~{if defined(barcode_verify) then ("--barcode_verify " +  '"' + barcode_verify + '"') else ""} \
      ~{if defined(store_overlap) then ("--store_overlap " +  '"' + store_overlap + '"') else ""} \
      ~{if defined(overlap_output_folder) then ("--overlap_output_folder " +  '"' + overlap_output_folder + '"') else ""} \
      ~{true="--qc_only" false="" qc_only} \
      ~{if defined(qc_sample) then ("--qc_sample " +  '"' + qc_sample + '"') else ""} \
      ~{if defined(qc_km_er) then ("--qc_kmer " +  '"' + qc_km_er + '"') else ""} \
      ~{true="--no_correction" false="" no_correction} \
      ~{true="--mask_mismatch" false="" mask_mismatch} \
      ~{true="--no_overlap" false="" no_overlap} \
      ~{true="--gzip" false="" gzip} \
      ~{if defined(compression) then ("--compression " +  '"' + compression + '"') else ""}
  >>>
  parameter_meta {
    read_one_file: "file name of read1, required. If input_dir is specified, then this arg is ignored."
    read_two_file: "file name of read2, if paired. If input_dir is specified, then this arg is ignored."
    index_one_file: "file name of 7' index. If input_dir is specified, then this arg is ignored."
    index_two_file: "file name of 5' index. If input_dir is specified, then this arg is ignored."
    input_dir: "the input dir to process automatically. If read1_file are input_dir are not specified, then current dir (.) is specified to input_dir"
    good_output_folder: "the folder to store good reads, by default it is named 'good', in the current directory"
    bad_output_folder: "the folder to store bad reads, by default it is named 'bad', in the same folder as good_output_folder"
    report_output_folder: "the folder to store QC reports, by default it is named 'QC', in the same folder as good_output_folder"
    read_one_flag: "specify the name flag of read1, default is R1, which means a file with name *R1* is read1 file"
    read_two_flag: "specify the name flag of read2, default is R2, which means a file with name *R2* is read2 file"
    index_one_flag: "specify the name flag of index1, default is I1, which means a file with name *I1* is index2 file"
    index_two_flag: "specify the name flag of index2, default is I2, which means a file with name *I2* is index2 file"
    trim_front: "number of bases to be trimmed in the head of read. -1 means auto detect"
    trim_tail: "number of bases to be trimmed in the tail of read. -1 means auto detect"
    trim_pair_same: "use same trimming configuration for read1 and read2 to keep their sequence length identical, default is true"
    qualified_quality_phred: "the quality value that a base is qualifyed. Default 15 means phred base quality >=Q15 is qualified."
    unqualified_base_limit: "if exists more than unqualified_base_limit bases that quality is lower than qualified quality, then this read/pair is bad. Default is 60"
    poly_size_limit: "if exists one polyX(polyG means GGGGGGGGG...), and its length is >= poly_size_limit, then this read/pair is bad. Default is 35"
    allow_mismatch_in_poly: "the count of allowed mismatches when detection polyX. Default 2 means allow 2 mismatches for polyX detection"
    n_base_limit: "if exists more than maxn bases have N, then this read/pair is bad. Default is 5"
    seq_len_req: "if the trimmed read is shorter than seq_len_req, then this read/pair is bad. Default is 35"
    de_bubble: "specify whether apply debubble algorithm to remove the reads in the bubbles. Default is False"
    de_bubble_dir: "specify the folder to store output of debubble algorithm, default is debubble"
    draw: "specify whether draw the pictures or not, when use debubble or QC. Default is on"
    barcode: "specify whether deal with barcode sequencing files, default is on, which means all files with barcode_flag in filename will be treated as barcode sequencing files"
    barcode_length: "specify the designed length of barcode"
    barcode_flag: "specify the name flag of a barcoded file, default is barcode, which means a file with name *barcode* is a barcoded file"
    barcode_verify: "specify the verify sequence of a barcode which is adjunct to the barcode"
    store_overlap: "specify whether store only overlapped bases of the good reads"
    overlap_output_folder: "the folder to store only overlapped bases of the good reads"
    qc_only: "if qconly is true, only QC result will be output, this can be much fast"
    qc_sample: "sample up to qc_sample reads when do QC, 0 means sample all reads. Default is 200,000"
    qc_km_er: "specify the kmer length for KMER statistics for QC, default is 8"
    no_correction: "disable base correction for mismatched base pairs in overlapped areas"
    mask_mismatch: "set the qual num to 0 for mismatched base pairs in overlapped areas to mask them out"
    no_overlap: "disable overlap analysis (usually much faster with this option)"
    gzip: "force gzip compression for output, even the input is not gzip compressed"
    compression: "set compression level (0~9) for gzip output, default is 2 (0 = best speed, 9 = best compression)."
    automatic: ""
    filtering: ""
  }
}