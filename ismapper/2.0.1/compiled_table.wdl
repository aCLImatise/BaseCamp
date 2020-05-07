version 1.0

task CompiledTable.py {
  input {
    Array[String]+ tablesTables
    String referenceReference
    String queryQuery
    String gapGap
    String cdsCds
    String trnaTrna
    String rrnaRrna
    String impreciseImprecise
    String unconfidentUnconfident
    String outOutPrefix
  }
  command <<<
    compiled_table.py \
      ~{if defined(tablesTables) then ("--tables " +  '"' + tablesTables + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(gapGap) then ("--gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(cdsCds) then ("--cds " +  '"' + cdsCds + '"') else ""} \
      ~{if defined(trnaTrna) then ("--trna " +  '"' + trnaTrna + '"') else ""} \
      ~{if defined(rrnaRrna) then ("--rrna " +  '"' + rrnaRrna + '"') else ""} \
      ~{if defined(impreciseImprecise) then ("--imprecise " +  '"' + impreciseImprecise + '"') else ""} \
      ~{if defined(unconfidentUnconfident) then ("--unconfident " +  '"' + unconfidentUnconfident + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--out_prefix " +  '"' + outOutPrefix + '"') else ""}
  >>>
}