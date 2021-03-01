version 1.0

task Qcat {
  input {
    String? log
    Boolean? quiet
    File? fast_q
    Directory? barcode_dir
    File? output_file_trimmed
    Int? min_score
    Boolean? detect_middle
    Int? threads
    Int? min_read_length
    Boolean? tsv
    Boolean? trim
    Boolean? sequencing_kit_specifying
    Boolean? list_kits
    Boolean? guppy
    Boolean? epi_two_me
    Boolean? dual
    Boolean? simple
    Boolean? no_batch
    Boolean? filter_barcodes
    Int? simple_barcodes
    Boolean? v
  }
  command <<<
    qcat \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(barcode_dir) then ("--barcode_dir " +  '"' + barcode_dir + '"') else ""} \
      ~{if defined(output_file_trimmed) then ("--output " +  '"' + output_file_trimmed + '"') else ""} \
      ~{if defined(min_score) then ("--min-score " +  '"' + min_score + '"') else ""} \
      ~{if (detect_middle) then "--detect-middle" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(min_read_length) then ("--min-read-length " +  '"' + min_read_length + '"') else ""} \
      ~{if (tsv) then "--tsv" else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (sequencing_kit_specifying) then "-k" else ""} \
      ~{if (list_kits) then "--list-kits" else ""} \
      ~{if (guppy) then "--guppy" else ""} \
      ~{if (epi_two_me) then "--epi2me" else ""} \
      ~{if (dual) then "--dual" else ""} \
      ~{if (simple) then "--simple" else ""} \
      ~{if (no_batch) then "--no-batch" else ""} \
      ~{if (filter_barcodes) then "--filter-barcodes" else ""} \
      ~{if defined(simple_barcodes) then ("--simple-barcodes " +  '"' + simple_barcodes + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log: "Print debug information"
    quiet: "Don't print summary"
    fast_q: "Barcoded read file"
    barcode_dir: "If specified, qcat will demultiplex reads to this\\nfolder"
    output_file_trimmed: "Output file trimmed reads will be written to (default:\\nstdout)."
    min_score: "Minimum barcode score. Barcode calls with a lower\\nscore will be discarded. Must be between 0 and 100.\\n(default: 60)"
    detect_middle: "Search for adapters in the whole read"
    threads: "Number of threads. Only works with in guppy mode"
    min_read_length: "Reads short than <min-read-length> after trimming will\\nbe discarded."
    tsv: "Prints a tsv file containing barcode information each\\nread to stdout."
    trim: "Remove adapter and barcode sequences from reads."
    sequencing_kit_specifying: "{Auto,RAB204/RAB214,PBC001,PBC096,DUAL,RPB004/RLB001,RAB204,NBD104/NBD114,NBD114,VMK001,RBK001,RAB214,PBK004/LWB001,NBD103/NBD104,RBK004}, --kit {Auto,RAB204/RAB214,PBC001,PBC096,DUAL,RPB004/RLB001,RAB204,NBD104/NBD114,NBD114,VMK001,RBK001,RAB214,PBK004/LWB001,NBD103/NBD104,RBK004}\\nSequencing kit. Specifying the correct kit will\\nimprove sensitivity and specificity and runtime\\n(default: auto)"
    list_kits: "List all supported kits"
    guppy: "Use Guppy's demultiplexing algorithm (default: false)"
    epi_two_me: "Use EPI2ME's demultiplexing algorithm (default: true)"
    dual: "Use dual barcoding algorithm"
    simple: "Use simple demultiplexing algorithm. Only looks for\\nbarcodes, not for adapter sequences. Use only for\\ntesting purposes!"
    no_batch: "Don't use information from multiple reads for kit\\ndetection (default: false)"
    filter_barcodes: "Filter rare barcode calls when run in batch mode"
    simple_barcodes: "Use 12 (standard) or 96 (extended) barcodes for\\ndemultiplexing\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_trimmed = "${in_output_file_trimmed}"
  }
}