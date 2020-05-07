version 1.0

task RgtFilterVCF {
  input {
    String tTMq
    String tTDp
    String dbsnpDbsnp
    String listListWt
    String bedBed
    Boolean maxMaxDensity
    String lowerLowerBound
    String upperUpperBound
  }
  command <<<
    rgt-filterVCF \
      ~{if defined(tTMq) then ("--t-mq " +  '"' + tTMq + '"') else ""} \
      ~{if defined(tTDp) then ("--t-dp " +  '"' + tTDp + '"') else ""} \
      ~{if defined(dbsnpDbsnp) then ("--dbSNP " +  '"' + dbsnpDbsnp + '"') else ""} \
      ~{if defined(listListWt) then ("--list-WT " +  '"' + listListWt + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{true="--max-density" false="" maxMaxDensity} \
      ~{if defined(lowerLowerBound) then ("--lowerBound " +  '"' + lowerLowerBound + '"') else ""} \
      ~{if defined(upperUpperBound) then ("--upperBound " +  '"' + upperUpperBound + '"') else ""}
  >>>
}