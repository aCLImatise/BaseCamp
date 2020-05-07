version 1.0

task After.py {
  input {
    String inputInputDir
    String goodGoodOutputFolder
    String badBadOutputFolder
    String reportReportOutputFolder
    String readRead1Flag
    String readRead2Flag
    String indexIndex1Flag
    String indexIndex2Flag
    String trimTrimFront
    String trimTrimTail
    String trimTrimPairSame
    String qualifiedQualifiedQualityPhred
    String unqualifiedUnqualifiedBaseLimit
    String polyPolySizeLimit
    String allowAllowMismatchInPoly
    String nNBaseLimit
    String seqSeqLenReq
    Boolean deDeBubble
    String deDeBubbleDir
    String drawDraw
    String barcodeBarcode
    String barcodeBarcodeLength
    String barcodeBarcodeFlag
    String barcodeBarcodeVerify
    String storeStoreOverlap
    String overlapOverlapOutputFolder
    Boolean qcQcOnly
    String qcQcSample
    String qcQcKmEr
    Boolean noNoCorrection
    Boolean maskMaskMismatch
    Boolean noNoOverlap
    Boolean gzipGzip
    String compressionCompression
  }
  command <<<
    after.py \
      ~{if defined(inputInputDir) then ("--input_dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(goodGoodOutputFolder) then ("--good_output_folder " +  '"' + goodGoodOutputFolder + '"') else ""} \
      ~{if defined(badBadOutputFolder) then ("--bad_output_folder " +  '"' + badBadOutputFolder + '"') else ""} \
      ~{if defined(reportReportOutputFolder) then ("--report_output_folder " +  '"' + reportReportOutputFolder + '"') else ""} \
      ~{if defined(readRead1Flag) then ("--read1_flag " +  '"' + readRead1Flag + '"') else ""} \
      ~{if defined(readRead2Flag) then ("--read2_flag " +  '"' + readRead2Flag + '"') else ""} \
      ~{if defined(indexIndex1Flag) then ("--index1_flag " +  '"' + indexIndex1Flag + '"') else ""} \
      ~{if defined(indexIndex2Flag) then ("--index2_flag " +  '"' + indexIndex2Flag + '"') else ""} \
      ~{if defined(trimTrimFront) then ("--trim_front " +  '"' + trimTrimFront + '"') else ""} \
      ~{if defined(trimTrimTail) then ("--trim_tail " +  '"' + trimTrimTail + '"') else ""} \
      ~{if defined(trimTrimPairSame) then ("--trim_pair_same " +  '"' + trimTrimPairSame + '"') else ""} \
      ~{if defined(qualifiedQualifiedQualityPhred) then ("--qualified_quality_phred " +  '"' + qualifiedQualifiedQualityPhred + '"') else ""} \
      ~{if defined(unqualifiedUnqualifiedBaseLimit) then ("--unqualified_base_limit " +  '"' + unqualifiedUnqualifiedBaseLimit + '"') else ""} \
      ~{if defined(polyPolySizeLimit) then ("--poly_size_limit " +  '"' + polyPolySizeLimit + '"') else ""} \
      ~{if defined(allowAllowMismatchInPoly) then ("--allow_mismatch_in_poly " +  '"' + allowAllowMismatchInPoly + '"') else ""} \
      ~{if defined(nNBaseLimit) then ("--n_base_limit " +  '"' + nNBaseLimit + '"') else ""} \
      ~{if defined(seqSeqLenReq) then ("--seq_len_req " +  '"' + seqSeqLenReq + '"') else ""} \
      ~{true="--debubble" false="" deDeBubble} \
      ~{if defined(deDeBubbleDir) then ("--debubble_dir " +  '"' + deDeBubbleDir + '"') else ""} \
      ~{if defined(drawDraw) then ("--draw " +  '"' + drawDraw + '"') else ""} \
      ~{if defined(barcodeBarcode) then ("--barcode " +  '"' + barcodeBarcode + '"') else ""} \
      ~{if defined(barcodeBarcodeLength) then ("--barcode_length " +  '"' + barcodeBarcodeLength + '"') else ""} \
      ~{if defined(barcodeBarcodeFlag) then ("--barcode_flag " +  '"' + barcodeBarcodeFlag + '"') else ""} \
      ~{if defined(barcodeBarcodeVerify) then ("--barcode_verify " +  '"' + barcodeBarcodeVerify + '"') else ""} \
      ~{if defined(storeStoreOverlap) then ("--store_overlap " +  '"' + storeStoreOverlap + '"') else ""} \
      ~{if defined(overlapOverlapOutputFolder) then ("--overlap_output_folder " +  '"' + overlapOverlapOutputFolder + '"') else ""} \
      ~{true="--qc_only" false="" qcQcOnly} \
      ~{if defined(qcQcSample) then ("--qc_sample " +  '"' + qcQcSample + '"') else ""} \
      ~{if defined(qcQcKmEr) then ("--qc_kmer " +  '"' + qcQcKmEr + '"') else ""} \
      ~{true="--no_correction" false="" noNoCorrection} \
      ~{true="--mask_mismatch" false="" maskMaskMismatch} \
      ~{true="--no_overlap" false="" noNoOverlap} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{if defined(compressionCompression) then ("--compression " +  '"' + compressionCompression + '"') else ""}
  >>>
}