version 1.0

task Vcf2wig.pl {
  input {
    Int minMinCt
  }
  command <<<
    vcf2wig.pl \
      ~{if defined(minMinCt) then ("--minCT " +  '"' + minMinCt + '"') else ""}
  >>>
}