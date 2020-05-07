version 1.0

task Bazam {
  input {
    String bamBam
    String drDr
    String filterFilter
    String geneGene
    String regionsRegions
    String nN
    Boolean nameNamePos
    String oO
    String padPad
    String r1R1
    String r2R2
    String sS
  }
  command <<<
    bazam \
      ~{if defined(bamBam) then ("-bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(drDr) then ("-dr " +  '"' + drDr + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(geneGene) then ("-gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-namepos" false="" nameNamePos} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(padPad) then ("-pad " +  '"' + padPad + '"') else ""} \
      ~{if defined(r1R1) then ("-r1 " +  '"' + r1R1 + '"') else ""} \
      ~{if defined(r2R2) then ("-r2 " +  '"' + r2R2 + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}