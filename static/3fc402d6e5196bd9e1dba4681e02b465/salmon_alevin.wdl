version 1.0

task SalmonAlevin {
  input {
    Boolean? arg_format_string
    Boolean? arg_list_files
    Boolean? one
    Boolean? two
    Boolean? print_version_string
    Directory? arg_output_quantification
    Boolean? just_selectively_align
    Boolean? sketch
    Boolean? arg_number_use
    File? hash
    Boolean? drop_seq
    Boolean? chromium_v_three
    Boolean? chromium
    Boolean? gem_code
    Boolean? cite_seq
    Boolean? c_else_q
    Boolean? c_else_q_two
    Boolean? quartz_seq_two
    File? whitelist
    Int? feature_start
    Int? feature_length
    Boolean? no_quant
    Int? num_cell_gibbs_samples
    Int? force_cells
    Int? expect_cells
    File? mrna
    File? rrna
    Int? keep_cb_fraction
    String? read_geometry
    String? bc_geometry
    String? umi_geometry
    Int? end
    Int? umi_length
    Int? barcode_length
    Boolean? no_em
    Int? freq_threshold
    Boolean? dump_fq
    Boolean? dump_bfh
    Boolean? dump_arbor_esc_ences
    Boolean? dump_umi_graph
    Boolean? dump_cell_eq
    Boolean? dump_features
    Boolean? dump_mtx
    Int? low_region_min_num_barcodes
    Int? max_num_barcodes
    String type
    String concurrently_dot
    String model_dot
    String barcodes
  }
  command <<<
    salmon alevin \
      ~{type} \
      ~{concurrently_dot} \
      ~{model_dot} \
      ~{barcodes} \
      ~{if (arg_format_string) then "-l" else ""} \
      ~{if (arg_list_files) then "-r" else ""} \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (print_version_string) then "-v" else ""} \
      ~{if (arg_output_quantification) then "-o" else ""} \
      ~{if (just_selectively_align) then "-j" else ""} \
      ~{if (sketch) then "--sketch" else ""} \
      ~{if (arg_number_use) then "-p" else ""} \
      ~{if defined(hash) then ("--hash " +  '"' + hash + '"') else ""} \
      ~{if (drop_seq) then "--dropseq" else ""} \
      ~{if (chromium_v_three) then "--chromiumV3" else ""} \
      ~{if (chromium) then "--chromium" else ""} \
      ~{if (gem_code) then "--gemcode" else ""} \
      ~{if (cite_seq) then "--citeseq" else ""} \
      ~{if (c_else_q) then "--celseq" else ""} \
      ~{if (c_else_q_two) then "--celseq2" else ""} \
      ~{if (quartz_seq_two) then "--quartzseq2" else ""} \
      ~{if defined(whitelist) then ("--whitelist " +  '"' + whitelist + '"') else ""} \
      ~{if defined(feature_start) then ("--featureStart " +  '"' + feature_start + '"') else ""} \
      ~{if defined(feature_length) then ("--featureLength " +  '"' + feature_length + '"') else ""} \
      ~{if (no_quant) then "--noQuant" else ""} \
      ~{if defined(num_cell_gibbs_samples) then ("--numCellGibbsSamples " +  '"' + num_cell_gibbs_samples + '"') else ""} \
      ~{if defined(force_cells) then ("--forceCells " +  '"' + force_cells + '"') else ""} \
      ~{if defined(expect_cells) then ("--expectCells " +  '"' + expect_cells + '"') else ""} \
      ~{if defined(mrna) then ("--mrna " +  '"' + mrna + '"') else ""} \
      ~{if defined(rrna) then ("--rrna " +  '"' + rrna + '"') else ""} \
      ~{if defined(keep_cb_fraction) then ("--keepCBFraction " +  '"' + keep_cb_fraction + '"') else ""} \
      ~{if defined(read_geometry) then ("--read-geometry " +  '"' + read_geometry + '"') else ""} \
      ~{if defined(bc_geometry) then ("--bc-geometry " +  '"' + bc_geometry + '"') else ""} \
      ~{if defined(umi_geometry) then ("--umi-geometry " +  '"' + umi_geometry + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(umi_length) then ("--umiLength " +  '"' + umi_length + '"') else ""} \
      ~{if defined(barcode_length) then ("--barcodeLength " +  '"' + barcode_length + '"') else ""} \
      ~{if (no_em) then "--noem" else ""} \
      ~{if defined(freq_threshold) then ("--freqThreshold " +  '"' + freq_threshold + '"') else ""} \
      ~{if (dump_fq) then "--dumpfq" else ""} \
      ~{if (dump_bfh) then "--dumpBfh" else ""} \
      ~{if (dump_arbor_esc_ences) then "--dumpArborescences" else ""} \
      ~{if (dump_umi_graph) then "--dumpUmiGraph" else ""} \
      ~{if (dump_cell_eq) then "--dumpCellEq" else ""} \
      ~{if (dump_features) then "--dumpFeatures" else ""} \
      ~{if (dump_mtx) then "--dumpMtx" else ""} \
      ~{if defined(low_region_min_num_barcodes) then ("--lowRegionMinNumBarcodes " +  '"' + low_region_min_num_barcodes + '"') else ""} \
      ~{if defined(max_num_barcodes) then ("--maxNumBarcodes " +  '"' + max_num_barcodes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/salmon:1.4.0--hf69c8f4_0"
  }
  parameter_meta {
    arg_format_string: "[ --libType ] arg                  Format string describing the library"
    arg_list_files: "[ --unmatedReads ] arg             List of files containing unmated reads\\nof (e.g. single-end reads)"
    one: "[ --mates1 ] arg                   File containing the #1 mates"
    two: "[ --mates2 ] arg                   File containing the #2 mates"
    print_version_string: "[ --version ]                      print version string"
    arg_output_quantification: "[ --output ] arg                   Output quantification directory."
    just_selectively_align: "[ --rad ]                          just selectively align the data and\\nwrite the results to a RAD file.  Do\\nnot perform the rest of the\\nquantification procedure."
    sketch: "perform sketching rather than selective\\nalignment and write the results to a\\nRAD file. Requires the `--rad` flag. Do\\nnot perform the rest of the\\nquantification procedure."
    arg_number_use: "[ --threads ] arg (=2)             The number of threads to use"
    hash: "Secondary input point for Alevin using\\nBig freaking Hash (bfh.txt) file. Works\\nOnly with --chromium"
    drop_seq: "Use DropSeq Single Cell protocol for\\nthe library"
    chromium_v_three: "Use 10x chromium v3 Single Cell\\nprotocol for the library."
    chromium: "Use 10x chromium v2 Single Cell\\nprotocol for the library."
    gem_code: "Use 10x gemcode v1 Single Cell protocol\\nfor the library."
    cite_seq: "Use CITESeq Single Cell protocol for\\nthe library, 16 CB, 12 UMI and\\nfeatures."
    c_else_q: "Use CEL-Seq Single Cell protocol for\\nthe library."
    c_else_q_two: "Use CEL-Seq2 Single Cell protocol for\\nthe library."
    quartz_seq_two: "Use Quartz-Seq2 v3.2 Single Cell\\nprotocol for the library assumes 15\\nlength barcode and 8 length UMI."
    whitelist: "File containing white-list barcodes"
    feature_start: "This flag should be used with citeseq\\nand specifies the starting index of the\\nfeature barcode on Read2."
    feature_length: "This flag should be used with citeseq\\nand specifies the length of the feature\\nbarcode."
    no_quant: "Don't run downstream barcode-salmon"
    num_cell_gibbs_samples: "(=0)        Generate mean and variance for cell x\\ngene matrix quantification by running\\ngibbs chain estimates."
    force_cells: "(=0)                 Explicitly specify the number of cells."
    expect_cells: "(=0)                define a close upper bound on expected\\nnumber of cells"
    mrna: "path to a file containing mito-RNA\\ngene, one per line"
    rrna: "path to a file containing ribosomal\\nRNA, one per line"
    keep_cb_fraction: "(=0)             fraction of CB to keep, value must be\\nin range (0,1], use 1 to quantify all\\nCB."
    read_geometry: "format string describing the geometry\\nof the read"
    bc_geometry: "format string describing the geometry\\nof the cell barcode"
    umi_geometry: "format string describing the genometry\\nof the umi"
    end: "Cell-Barcodes end (5 or 3) location in\\nthe read sequence from where barcode\\nhas to be extracted. (end, umiLength,\\nbarcodeLength) should all be provided\\nif using this option"
    umi_length: "umi length Parameter for unknown\\nprotocol. (end, umiLength,\\nbarcodeLength) should all be provided\\nif using this option"
    barcode_length: "barcode length Parameter for unknown\\nprotocol. (end, umiLength,\\nbarcodeLength) should all be provided\\nif using this option"
    no_em: "do not run em"
    freq_threshold: "(=10)             threshold for the frequency of the"
    dump_fq: "Dump barcode modified fastq file for\\ndownstream analysis by using coin toss\\nfor multi-mapping."
    dump_bfh: "dump the big hash with all the barcodes\\nand the UMI sequence."
    dump_arbor_esc_ences: "dump the gene-v-cell matrix for the\\ntotal number of fragments used in the\\nUMI deduplicaiton."
    dump_umi_graph: "dump the per cell level Umi Graph."
    dump_cell_eq: "dump the per cell level deduplicated\\nequivalence classes."
    dump_features: "Dump features for whitelist and\\ndownstream analysis."
    dump_mtx: "Dump cell v transcripts count matrix in\\nsparse mtx format."
    low_region_min_num_barcodes: "(=200)  Minimum Number of CB to use for\\nlearning Low confidence region\\n(Default: 200)."
    max_num_barcodes: "(=100000)        Maximum allowable limit to process the\\ncell barcodes. (Default: 100000)\\n"
    type: "-i [ --index ] arg                    salmon index"
    concurrently_dot: "--tgMap arg                           transcript to gene map tsv file"
    model_dot: "--numCellBootstraps arg (=0)          Generate mean and variance for cell x "
    barcodes: "--umiEditDistance arg (=1)            Maximum allowble edit distance to "
  }
  output {
    File out_stdout = stdout()
    Directory out_arg_output_quantification = "${in_arg_output_quantification}"
  }
}