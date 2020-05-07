version 1.0

task BuildGenomeBG {
  input {
    String dbDb
    String gtGt
    String wigWig
    String otOt
    String promoterPromoter
    String biBiPromoter
    String downstreamDownstream
    String binsizeBinsize
  }
  command <<<
    build_genomeBG \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(gtGt) then ("--gt " +  '"' + gtGt + '"') else ""} \
      ~{if defined(wigWig) then ("--wig " +  '"' + wigWig + '"') else ""} \
      ~{if defined(otOt) then ("--ot " +  '"' + otOt + '"') else ""} \
      ~{if defined(promoterPromoter) then ("--promoter " +  '"' + promoterPromoter + '"') else ""} \
      ~{if defined(biBiPromoter) then ("--bipromoter " +  '"' + biBiPromoter + '"') else ""} \
      ~{if defined(downstreamDownstream) then ("--downstream " +  '"' + downstreamDownstream + '"') else ""} \
      ~{if defined(binsizeBinsize) then ("--binsize " +  '"' + binsizeBinsize + '"') else ""}
  >>>
}