version 1.0

task GenerateBEDFileOfEndpoints.py {
  input {
    Boolean reverseReverse
    String summarySummary
    String geneGeneName
    Boolean randRandScore
    String posPosFirst
    String posPosSecond
    String revRevFirst
    String revRevSecond
    String bcBcChrList
    String? genomeGenome
    String? listListReads
    String? trackTrackName
    String? trackTrackDesc
    String? bamBamFiles
  }
  command <<<
    generate_BED_file_of_endpoints.py \
      ~{genomeGenome} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{if defined(geneGeneName) then ("--gene_name " +  '"' + geneGeneName + '"') else ""} \
      ~{true="--rand_score" false="" randRandScore} \
      ~{if defined(posPosFirst) then ("--pos_first " +  '"' + posPosFirst + '"') else ""} \
      ~{if defined(posPosSecond) then ("--pos_second " +  '"' + posPosSecond + '"') else ""} \
      ~{if defined(revRevFirst) then ("--rev_first " +  '"' + revRevFirst + '"') else ""} \
      ~{if defined(revRevSecond) then ("--rev_second " +  '"' + revRevSecond + '"') else ""} \
      ~{if defined(bcBcChrList) then ("--BC_chrlist " +  '"' + bcBcChrList + '"') else ""} \
      ~{listListReads} \
      ~{trackTrackName} \
      ~{trackTrackDesc} \
      ~{bamBamFiles}
  >>>
}