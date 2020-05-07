version 1.0

task DemuxByBarcodeGroups.py {
  input {
    String pooledPooledFastX
    String? pooledPooledGff
    String? demuxDemuxCountFile
    String? outputOutputPrefix
    String? outOutGroupDict
  }
  command <<<
    demux_by_barcode_groups.py \
      ~{pooledPooledGff} \
      ~{if defined(pooledPooledFastX) then ("--pooled_fastx " +  '"' + pooledPooledFastX + '"') else ""} \
      ~{demuxDemuxCountFile} \
      ~{outputOutputPrefix} \
      ~{outOutGroupDict}
  >>>
}