version 1.0

task MACARON {
  input {
    String inInFile
    String outfileOutfile
    String fieldsFields
    String gGAtk
    String hgHgRef
    String snpSnpEff
    String snpSnpEffHg
    Boolean gatk4Gatk4
    Boolean verbosityVerbosity
    Boolean ecoEcoFriendly
  }
  command <<<
    MACARON \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(gGAtk) then ("--GATK " +  '"' + gGAtk + '"') else ""} \
      ~{if defined(hgHgRef) then ("--HG_REF " +  '"' + hgHgRef + '"') else ""} \
      ~{if defined(snpSnpEff) then ("--SNPEFF " +  '"' + snpSnpEff + '"') else ""} \
      ~{if defined(snpSnpEffHg) then ("--SNPEFF_HG " +  '"' + snpSnpEffHg + '"') else ""} \
      ~{true="--gatk4" false="" gatk4Gatk4} \
      ~{true="--verbosity" false="" verbosityVerbosity} \
      ~{true="--eco_friendly" false="" ecoEcoFriendly}
  >>>
}