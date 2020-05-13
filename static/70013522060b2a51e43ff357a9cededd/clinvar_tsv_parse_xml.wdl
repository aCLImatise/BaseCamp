version 1.0

task ClinvarTsvParseXml {
  input {
    String outputOutputMulti
    String clinClinVarXml
    String genomeGenomeBuild
    String outputOutputSingle
    String outputOutputMulti
    Int maxMaxRows
  }
  command <<<
    clinvar_tsv parse_xml \
      ~{if defined(outputOutputMulti) then ("--output-multi " +  '"' + outputOutputMulti + '"') else ""} \
      ~{if defined(clinClinVarXml) then ("--clinvar-xml " +  '"' + clinClinVarXml + '"') else ""} \
      ~{if defined(genomeGenomeBuild) then ("--genome-build " +  '"' + genomeGenomeBuild + '"') else ""} \
      ~{if defined(outputOutputSingle) then ("--output-single " +  '"' + outputOutputSingle + '"') else ""} \
      ~{if defined(outputOutputMulti) then ("--output-multi " +  '"' + outputOutputMulti + '"') else ""} \
      ~{if defined(maxMaxRows) then ("--max-rows " +  '"' + maxMaxRows + '"') else ""}
  >>>
}