version 1.0

task Afterpy {
  input {
    File? read_one_file
    File? read_two_file
    File? index_one_file
    File? index_two_file
    Int? input_dir
    Directory? good_output_folder
    Directory? bad_output_folder
    Directory? report_output_folder
    Int? read_one_flag
    Int? read_two_flag
    Int? index_one_flag
    Int? index_two_flag
    Int? trim_front
    Int? trim_tail
    Int? trim_pair_same
    Int? qualified_quality_phred
    Int? unqualified_base_limit
    Int? poly_size_limit
    Int? allow_mismatch_in_poly
    Int? n_base_limit
    Int? seq_len_req
    Boolean? de_bubble
    Directory? de_bubble_dir
    String? draw
    File? barcode
    Int? barcode_length
    File? barcode_flag
    String? barcode_verify
    String? store_overlap
    Directory? overlap_output_folder
    Boolean? qc_only
    Int? qc_sample
    Int? qc_km_er
    Boolean? no_correction
    Boolean? mask_mismatch
    Boolean? no_overlap
    Boolean? gzip
    Int? compression
    String automatic
    String filtering
  }
  command <<<
    after_py \
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
      ~{if (de_bubble) then "--debubble" else ""} \
      ~{if defined(de_bubble_dir) then ("--debubble_dir " +  '"' + de_bubble_dir + '"') else ""} \
      ~{if defined(draw) then ("--draw " +  '"' + draw + '"') else ""} \
      ~{if defined(barcode) then ("--barcode " +  '"' + barcode + '"') else ""} \
      ~{if defined(barcode_length) then ("--barcode_length " +  '"' + barcode_length + '"') else ""} \
      ~{if defined(barcode_flag) then ("--barcode_flag " +  '"' + barcode_flag + '"') else ""} \
      ~{if defined(barcode_verify) then ("--barcode_verify " +  '"' + barcode_verify + '"') else ""} \
      ~{if defined(store_overlap) then ("--store_overlap " +  '"' + store_overlap + '"') else ""} \
      ~{if defined(overlap_output_folder) then ("--overlap_output_folder " +  '"' + overlap_output_folder + '"') else ""} \
      ~{if (qc_only) then "--qc_only" else ""} \
      ~{if defined(qc_sample) then ("--qc_sample " +  '"' + qc_sample + '"') else ""} \
      ~{if defined(qc_km_er) then ("--qc_kmer " +  '"' + qc_km_er + '"') else ""} \
      ~{if (no_correction) then "--no_correction" else ""} \
      ~{if (mask_mismatch) then "--mask_mismatch" else ""} \
      ~{if (no_overlap) then "--no_overlap" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if defined(compression) then ("--compression " +  '"' + compression + '"') else ""}
  >>>
  parameter_meta {
    read_one_file: "file name of read1, required. If input_dir is\\nspecified, then this arg is ignored."
    read_two_file: "file name of read2, if paired. If input_dir is\\nspecified, then this arg is ignored."
    index_one_file: "file name of 7' index. If input_dir is specified, then\\nthis arg is ignored."
    index_two_file: "file name of 5' index. If input_dir is specified, then\\nthis arg is ignored."
    input_dir: "the input dir to process automatically. If read1_file\\nare input_dir are not specified, then current dir (.)\\nis specified to input_dir"
    good_output_folder: "the folder to store good reads, by default it is named\\n'good', in the current directory"
    bad_output_folder: "the folder to store bad reads, by default it is named\\n'bad', in the same folder as good_output_folder"
    report_output_folder: "the folder to store QC reports, by default it is named\\n'QC', in the same folder as good_output_folder"
    read_one_flag: "specify the name flag of read1, default is R1, which\\nmeans a file with name *R1* is read1 file"
    read_two_flag: "specify the name flag of read2, default is R2, which\\nmeans a file with name *R2* is read2 file"
    index_one_flag: "specify the name flag of index1, default is I1, which\\nmeans a file with name *I1* is index2 file"
    index_two_flag: "specify the name flag of index2, default is I2, which\\nmeans a file with name *I2* is index2 file"
    trim_front: "number of bases to be trimmed in the head of read. -1\\nmeans auto detect"
    trim_tail: "number of bases to be trimmed in the tail of read. -1\\nmeans auto detect"
    trim_pair_same: "use same trimming configuration for read1 and read2 to\\nkeep their sequence length identical, default is true"
    qualified_quality_phred: "the quality value that a base is qualifyed. Default 15\\nmeans phred base quality >=Q15 is qualified."
    unqualified_base_limit: "if exists more than unqualified_base_limit bases that\\nquality is lower than qualified quality, then this\\nread/pair is bad. Default is 60"
    poly_size_limit: "if exists one polyX(polyG means GGGGGGGGG...), and its\\nlength is >= poly_size_limit, then this read/pair is\\nbad. Default is 35"
    allow_mismatch_in_poly: "the count of allowed mismatches when detection polyX.\\nDefault 2 means allow 2 mismatches for polyX detection"
    n_base_limit: "if exists more than maxn bases have N, then this\\nread/pair is bad. Default is 5"
    seq_len_req: "if the trimmed read is shorter than seq_len_req, then\\nthis read/pair is bad. Default is 35"
    de_bubble: "specify whether apply debubble algorithm to remove the\\nreads in the bubbles. Default is False"
    de_bubble_dir: "specify the folder to store output of debubble\\nalgorithm, default is debubble"
    draw: "specify whether draw the pictures or not, when use\\ndebubble or QC. Default is on"
    barcode: "specify whether deal with barcode sequencing files,\\ndefault is on, which means all files with barcode_flag\\nin filename will be treated as barcode sequencing\\nfiles"
    barcode_length: "specify the designed length of barcode"
    barcode_flag: "specify the name flag of a barcoded file, default is\\nbarcode, which means a file with name *barcode* is a\\nbarcoded file"
    barcode_verify: "specify the verify sequence of a barcode which is\\nadjunct to the barcode"
    store_overlap: "specify whether store only overlapped bases of the\\ngood reads"
    overlap_output_folder: "the folder to store only overlapped bases of the good\\nreads"
    qc_only: "if qconly is true, only QC result will be output, this\\ncan be much fast"
    qc_sample: "sample up to qc_sample reads when do QC, 0 means\\nsample all reads. Default is 200,000"
    qc_km_er: "specify the kmer length for KMER statistics for QC,\\ndefault is 8"
    no_correction: "disable base correction for mismatched base pairs in\\noverlapped areas"
    mask_mismatch: "set the qual num to 0 for mismatched base pairs in\\noverlapped areas to mask them out"
    no_overlap: "disable overlap analysis (usually much faster with\\nthis option)"
    gzip: "force gzip compression for output, even the input is\\nnot gzip compressed"
    compression: "set compression level (0~9) for gzip output, default\\nis 2 (0 = best speed, 9 = best compression).\\n"
    automatic: ""
    filtering: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_good_output_folder = "${in_good_output_folder}"
    Directory out_bad_output_folder = "${in_bad_output_folder}"
    Directory out_report_output_folder = "${in_report_output_folder}"
    Directory out_de_bubble_dir = "${in_de_bubble_dir}"
    Directory out_overlap_output_folder = "${in_overlap_output_folder}"
  }
}