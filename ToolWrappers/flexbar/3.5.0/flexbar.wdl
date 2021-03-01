version 1.0

task Flexbar {
  input {
    Boolean? full_help
    Boolean? versions
    Boolean? cite
    Int? threads
    File? target
    File? reads
    File? reads_two
    File? barcodes
    File? barcode_reads
    Int? barcode_min_overlap
    Float? barcode_error_rate
    String? barcode_trim_end
    File? adapters
    File? adapters_two
    String? adapter_preset
    Int? adapter_min_overlap
    Float? adapter_error_rate
    String? adapter_trim_end
    String? adapter_pair_overlap
    Int? max_uncalled
    Int? pre_trim_left
    Int? pre_trim_right
    Int? min_read_length
    String? q_trim
    Float? q_trim_format
    Int? q_trim_threshold
    String? h_trim_right
    Int? h_trim_min_length
    Float? h_trim_error_rate
    Boolean? fast_a_output
    Int? zip_output
    Boolean? stdout_reads
    String? align_log
    Boolean? stdout_log
    Boolean? removal_tags
  }
  command <<<
    flexbar \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if (versions) then "--versions" else ""} \
      ~{if (cite) then "--cite" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(reads_two) then ("--reads2 " +  '"' + reads_two + '"') else ""} \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if defined(barcode_reads) then ("--barcode-reads " +  '"' + barcode_reads + '"') else ""} \
      ~{if defined(barcode_min_overlap) then ("--barcode-min-overlap " +  '"' + barcode_min_overlap + '"') else ""} \
      ~{if defined(barcode_error_rate) then ("--barcode-error-rate " +  '"' + barcode_error_rate + '"') else ""} \
      ~{if defined(barcode_trim_end) then ("--barcode-trim-end " +  '"' + barcode_trim_end + '"') else ""} \
      ~{if defined(adapters) then ("--adapters " +  '"' + adapters + '"') else ""} \
      ~{if defined(adapters_two) then ("--adapters2 " +  '"' + adapters_two + '"') else ""} \
      ~{if defined(adapter_preset) then ("--adapter-preset " +  '"' + adapter_preset + '"') else ""} \
      ~{if defined(adapter_min_overlap) then ("--adapter-min-overlap " +  '"' + adapter_min_overlap + '"') else ""} \
      ~{if defined(adapter_error_rate) then ("--adapter-error-rate " +  '"' + adapter_error_rate + '"') else ""} \
      ~{if defined(adapter_trim_end) then ("--adapter-trim-end " +  '"' + adapter_trim_end + '"') else ""} \
      ~{if defined(adapter_pair_overlap) then ("--adapter-pair-overlap " +  '"' + adapter_pair_overlap + '"') else ""} \
      ~{if defined(max_uncalled) then ("--max-uncalled " +  '"' + max_uncalled + '"') else ""} \
      ~{if defined(pre_trim_left) then ("--pre-trim-left " +  '"' + pre_trim_left + '"') else ""} \
      ~{if defined(pre_trim_right) then ("--pre-trim-right " +  '"' + pre_trim_right + '"') else ""} \
      ~{if defined(min_read_length) then ("--min-read-length " +  '"' + min_read_length + '"') else ""} \
      ~{if defined(q_trim) then ("--qtrim " +  '"' + q_trim + '"') else ""} \
      ~{if defined(q_trim_format) then ("--qtrim-format " +  '"' + q_trim_format + '"') else ""} \
      ~{if defined(q_trim_threshold) then ("--qtrim-threshold " +  '"' + q_trim_threshold + '"') else ""} \
      ~{if defined(h_trim_right) then ("--htrim-right " +  '"' + h_trim_right + '"') else ""} \
      ~{if defined(h_trim_min_length) then ("--htrim-min-length " +  '"' + h_trim_min_length + '"') else ""} \
      ~{if defined(h_trim_error_rate) then ("--htrim-error-rate " +  '"' + h_trim_error_rate + '"') else ""} \
      ~{if (fast_a_output) then "--fasta-output" else ""} \
      ~{if defined(zip_output) then ("--zip-output " +  '"' + zip_output + '"') else ""} \
      ~{if (stdout_reads) then "--stdout-reads" else ""} \
      ~{if defined(align_log) then ("--align-log " +  '"' + align_log + '"') else ""} \
      ~{if (stdout_log) then "--stdout-log" else ""} \
      ~{if (removal_tags) then "--removal-tags" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    full_help: "Display the help message with advanced options."
    versions: "Print Flexbar and SeqAn version numbers."
    cite: "Show program references for citation."
    threads: "Number of threads to employ. Default: 1."
    target: "Prefix for output file names or paths. Default: flexbarOut."
    reads: "Fasta/q file or stdin (-) with reads that may contain barcodes."
    reads_two: "Second input file of paired reads, gz and bz2 files supported."
    barcodes: "Fasta file with barcodes for demultiplexing, may contain N."
    barcode_reads: "Fasta/q file containing separate barcode reads for detection."
    barcode_min_overlap: "Minimum overlap of barcode and read. Default: barcode length."
    barcode_error_rate: "Error rate threshold for mismatches and gaps. Default: 0.0."
    barcode_trim_end: "Type of detection, see section trim-end modes. Default: LTAIL."
    adapters: "Fasta file with adapters for removal that may contain N."
    adapters_two: "File with extra adapters for second read set in paired mode."
    adapter_preset: "One of TruSeq, SmallRNA, Methyl, Ribo, Nextera, and NexteraMP."
    adapter_min_overlap: "Minimum overlap for removal without pair overlap. Default: 3."
    adapter_error_rate: "Error rate threshold for mismatches and gaps. Default: 0.1."
    adapter_trim_end: "Type of removal, see section trim-end modes. Default: RIGHT."
    adapter_pair_overlap: "Overlap detection of paired reads. One of ON, SHORT, and ONLY."
    max_uncalled: "Allowed uncalled bases N for each read. Default: 0."
    pre_trim_left: "Trim given number of bases on 5' read end before detection."
    pre_trim_right: "Trim specified number of bases on 3' end prior to detection."
    min_read_length: "Minimum read length to remain after removal. Default: 18."
    q_trim: "Quality-based trimming mode. One of TAIL, WIN, and BWA."
    q_trim_format: "Quality format. One of sanger, solexa, i1.3, i1.5, and i1.8."
    q_trim_threshold: "Minimum quality as threshold for trimming. Default: 20."
    h_trim_right: "Trim certain homopolymers on right read end after removal."
    h_trim_min_length: "Minimum length of homopolymers at read ends. Default: 3."
    h_trim_error_rate: "Error rate threshold for mismatches. Default: 0.1."
    fast_a_output: "Prefer non-quality format fasta for output."
    zip_output: "Direct compression of output files. One of GZ and BZ2."
    stdout_reads: "Write reads to stdout, tagged and interleaved if needed."
    align_log: "Print chosen read alignments. One of ALL, MOD, and TAB."
    stdout_log: "Write statistics to stdout instead of target log file."
    removal_tags: "Tag reads that are subject to adapter or barcode removal."
  }
  output {
    File out_stdout = stdout()
    File out_target = "${in_target}"
  }
}