version 1.0

task ExtractBcs.py {
  input {
    String outfileOutfile
    String bcsBcs
    Boolean fastFastABarcodes
    Boolean addAddBcToFastQ
    Boolean verboseVerbose
    Boolean debugDebug
    String? inInFile
    String? patternPattern
  }
  command <<<
    extract_bcs.py \
      ~{inInFile} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(bcsBcs) then ("--bcs " +  '"' + bcsBcs + '"') else ""} \
      ~{true="--fasta-barcodes" false="" fastFastABarcodes} \
      ~{true="--add-bc-to-fastq" false="" addAddBcToFastQ} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{patternPattern}
  >>>
}