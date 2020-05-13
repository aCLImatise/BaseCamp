version 1.0

task SketchyOnlineSimulate {
  input {
    File fastFastX
    File indexIndex
    File outdirOutdir
    Int readsReadsPerFile
    String barcodesBarcodes
    Float speedSpeedUp
    String startStartTimeRegex
    String barcodeBarcodeRegex
    String testTest
  }
  command <<<
    sketchy online simulate \
      ~{if defined(fastFastX) then ("--fastx " +  '"' + fastFastX + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(readsReadsPerFile) then ("--reads_per_file " +  '"' + readsReadsPerFile + '"') else ""} \
      ~{if defined(barcodesBarcodes) then ("--barcodes " +  '"' + barcodesBarcodes + '"') else ""} \
      ~{if defined(speedSpeedUp) then ("--speedup " +  '"' + speedSpeedUp + '"') else ""} \
      ~{if defined(startStartTimeRegex) then ("--start_time_regex " +  '"' + startStartTimeRegex + '"') else ""} \
      ~{if defined(barcodeBarcodeRegex) then ("--barcode_regex " +  '"' + barcodeBarcodeRegex + '"') else ""} \
      ~{if defined(testTest) then ("--test " +  '"' + testTest + '"') else ""}
  >>>
}