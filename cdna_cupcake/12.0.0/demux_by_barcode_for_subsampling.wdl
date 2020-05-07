version 1.0

task DemuxByBarcodeForSubsampling.py {
  input {
    Boolean ignoreIgnoreNovel
    String? classClassFilename
    String? fastFastAFilename
    String? demuxDemuxCountFile
    String? outputOutputPrefix
    String? outOutGroupDict
  }
  command <<<
    demux_by_barcode_for_subsampling.py \
      ~{classClassFilename} \
      ~{true="--ignore_novel" false="" ignoreIgnoreNovel} \
      ~{fastFastAFilename} \
      ~{demuxDemuxCountFile} \
      ~{outputOutputPrefix} \
      ~{outOutGroupDict}
  >>>
}