class: CommandLineTool
id: salmon_alevin.cwl
inputs:
- id: in_arg_format_string
  doc: '[ --libType ] arg                  Format string describing the library'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_arg_list_files
  doc: "[ --unmatedReads ] arg             List of files containing unmated reads\n\
    of (e.g. single-end reads)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_one
  doc: '[ --mates1 ] arg                   File containing the #1 mates'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: '[ --mates2 ] arg                   File containing the #2 mates'
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_print_version_string
  doc: '[ --version ]                      print version string'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_arg_output_quantification
  doc: '[ --output ] arg                   Output quantification directory.'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_arg_number_use
  doc: '[ --threads ] arg (=2)             The number of threads to use'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_hash
  doc: "Secondary input point for Alevin using\nBig freaking Hash (bfh.txt) file.\
    \ Works\nOnly with --chromium"
  type: File?
  inputBinding:
    prefix: --hash
- id: in_drop_seq
  doc: "Use DropSeq Single Cell protocol for\nthe library"
  type: boolean?
  inputBinding:
    prefix: --dropseq
- id: in_chromium_v_three
  doc: "Use 10x chromium v3 Single Cell\nprotocol for the library."
  type: boolean?
  inputBinding:
    prefix: --chromiumV3
- id: in_chromium
  doc: "Use 10x chromium v2 Single Cell\nprotocol for the library."
  type: boolean?
  inputBinding:
    prefix: --chromium
- id: in_gem_code
  doc: "Use 10x gemcode v1 Single Cell protocol\nfor the library."
  type: boolean?
  inputBinding:
    prefix: --gemcode
- id: in_cite_seq
  doc: "Use CITESeq Single Cell protocol for\nthe library, 16 CB, 12 UMI and\nfeatures."
  type: boolean?
  inputBinding:
    prefix: --citeseq
- id: in_c_else_q
  doc: "Use CEL-Seq Single Cell protocol for\nthe library."
  type: boolean?
  inputBinding:
    prefix: --celseq
- id: in_c_else_q_two
  doc: "Use CEL-Seq2 Single Cell protocol for\nthe library."
  type: boolean?
  inputBinding:
    prefix: --celseq2
- id: in_quartz_seq_two
  doc: "Use Quartz-Seq2 v3.2 Single Cell\nprotocol for the library assumes 15\nlength\
    \ barcode and 8 length UMI."
  type: boolean?
  inputBinding:
    prefix: --quartzseq2
- id: in_whitelist
  doc: File containing white-list barcodes
  type: File?
  inputBinding:
    prefix: --whitelist
- id: in_feature_start
  doc: "This flag should be used with citeseq\nand specifies the starting index of\
    \ the\nfeature barcode on Read2."
  type: long?
  inputBinding:
    prefix: --featureStart
- id: in_feature_length
  doc: "This flag should be used with citeseq\nand specifies the length of the feature\n\
    barcode."
  type: long?
  inputBinding:
    prefix: --featureLength
- id: in_no_quant
  doc: Don't run downstream barcode-salmon
  type: boolean?
  inputBinding:
    prefix: --noQuant
- id: in_num_cell_gibbs_samples
  doc: "(=0)        Generate mean and variance for cell x\ngene matrix quantification\
    \ by running\ngibbs chain estimates."
  type: long?
  inputBinding:
    prefix: --numCellGibbsSamples
- id: in_force_cells
  doc: (=0)                 Explicitly specify the number of cells.
  type: long?
  inputBinding:
    prefix: --forceCells
- id: in_expect_cells
  doc: "(=0)                define a close upper bound on expected\nnumber of cells"
  type: long?
  inputBinding:
    prefix: --expectCells
- id: in_mrna
  doc: "path to a file containing mito-RNA\ngene, one per line"
  type: File?
  inputBinding:
    prefix: --mrna
- id: in_rrna
  doc: "path to a file containing ribosomal\nRNA, one per line"
  type: File?
  inputBinding:
    prefix: --rrna
- id: in_keep_cb_fraction
  doc: "(=0)             fraction of CB to keep, value must be\nin range (0,1], use\
    \ 1 to quantify all\nCB."
  type: long?
  inputBinding:
    prefix: --keepCBFraction
- id: in_end
  doc: "Cell-Barcodes end (5 or 3) location in\nthe read sequence from where barcode\n\
    has to be extracted. (end, umiLength,\nbarcodeLength) should all be provided\n\
    if using this option"
  type: long?
  inputBinding:
    prefix: --end
- id: in_umi_length
  doc: "umi length Parameter for unknown\nprotocol. (end, umiLength,\nbarcodeLength)\
    \ should all be provided\nif using this option"
  type: long?
  inputBinding:
    prefix: --umiLength
- id: in_barcode_length
  doc: "barcode length Parameter for unknown\nprotocol. (end, umiLength,\nbarcodeLength)\
    \ should all be provided\nif using this option"
  type: long?
  inputBinding:
    prefix: --barcodeLength
- id: in_no_em
  doc: do not run em
  type: boolean?
  inputBinding:
    prefix: --noem
- id: in_freq_threshold
  doc: (=10)             threshold for the frequency of the
  type: long?
  inputBinding:
    prefix: --freqThreshold
- id: in_dump_fq
  doc: "Dump barcode modified fastq file for\ndownstream analysis by using coin toss\n\
    for multi-mapping."
  type: boolean?
  inputBinding:
    prefix: --dumpfq
- id: in_dump_bfh
  doc: "dump the big hash with all the barcodes\nand the UMI sequence."
  type: boolean?
  inputBinding:
    prefix: --dumpBfh
- id: in_dump_arbor_esc_ences
  doc: "dump the gene-v-cell matrix for the\ntotal number of fragments used in the\n\
    UMI deduplicaiton."
  type: boolean?
  inputBinding:
    prefix: --dumpArborescences
- id: in_dump_umi_graph
  doc: dump the per cell level Umi Graph.
  type: boolean?
  inputBinding:
    prefix: --dumpUmiGraph
- id: in_dump_cell_eq
  doc: "dump the per cell level deduplicated\nequivalence classes."
  type: boolean?
  inputBinding:
    prefix: --dumpCellEq
- id: in_dump_features
  doc: "Dump features for whitelist and\ndownstream analysis."
  type: boolean?
  inputBinding:
    prefix: --dumpFeatures
- id: in_dump_mtx
  doc: "Dump cell v transcripts count matrix in\nsparse mtx format."
  type: boolean?
  inputBinding:
    prefix: --dumpMtx
- id: in_low_region_min_num_barcodes
  doc: "(=200)  Minimum Number of CB to use for\nlearning Low confidence region\n\
    (Default: 200)."
  type: long?
  inputBinding:
    prefix: --lowRegionMinNumBarcodes
- id: in_max_num_barcodes
  doc: "(=100000)        Maximum allowable limit to process the\ncell barcodes. (Default:\
    \ 100000)\n"
  type: long?
  inputBinding:
    prefix: --maxNumBarcodes
- id: in_type
  doc: -i [ --index ] arg                    salmon index
  type: string
  inputBinding:
    position: 0
- id: in_concurrently_dot
  doc: --tgMap arg                           transcript to gene map tsv file
  type: string
  inputBinding:
    position: 0
- id: in_model_dot
  doc: '--numCellBootstraps arg (=0)          Generate mean and variance for cell
    x '
  type: string
  inputBinding:
    position: 1
- id: in_barcodes
  doc: '--umiEditDistance arg (=1)            Maximum allowble edit distance to '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_quantification
  doc: '[ --output ] arg                   Output quantification directory.'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_arg_output_quantification)
hints: []
cwlVersion: v1.1
baseCommand:
- salmon
- alevin
