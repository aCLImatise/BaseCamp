version 1.0

task ExtractPromoterRegions.py {
  input {
    Boolean gzipGzip
    String? littleLittle
    String? scriptScript
    String? toTo
    String? extractExtract
    String? promoterPromoter
    String? regionsRegions
    String? fromFrom
    String? genesGenes
  }
  command <<<
    extract_promoter_regions.py \
      ~{littleLittle} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{scriptScript} \
      ~{toTo} \
      ~{extractExtract} \
      ~{promoterPromoter} \
      ~{regionsRegions} \
      ~{fromFrom} \
      ~{genesGenes}
  >>>
}