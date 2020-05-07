version 1.0

task HgGoldGapGl {
  input {
    Boolean noNoGl
    String chromChrom
    String chromosomesChromosomes
    String noNoLoad
    String verboseVerbose
    Boolean nN
  }
  command <<<
    hgGoldGapGl \
      ~{true="-noGl" false="" noNoGl} \
      ~{if defined(chromChrom) then ("-chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("- chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(noNoLoad) then ("-noLoad " +  '"' + noNoLoad + '"') else ""} \
      ~{if defined(verboseVerbose) then ("-verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="- n" false="" nN}
  >>>
}