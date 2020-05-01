version 1.0

task VariantAnnotation.py {
  input {
    String inInFile
    String outfileOutfile
    String dbsnpDbsnp
    String cosmicCosmic
    String snpSnpSift
    String snpSnpEff
    String snpSnpEffDb
  }
  command <<<
    variant_annotation.py \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(dbsnpDbsnp) then ("--dbsnp " +  '"' + dbsnpDbsnp + '"') else ""} \
      ~{if defined(cosmicCosmic) then ("--cosmic " +  '"' + cosmicCosmic + '"') else ""} \
      ~{if defined(snpSnpSift) then ("--snpsift " +  '"' + snpSnpSift + '"') else ""} \
      ~{if defined(snpSnpEff) then ("--snpeff " +  '"' + snpSnpEff + '"') else ""} \
      ~{if defined(snpSnpEffDb) then ("--snpeff-db " +  '"' + snpSnpEffDb + '"') else ""}
  >>>
}