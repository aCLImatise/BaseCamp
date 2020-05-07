version 1.0

task VtoolsGcoverage {
  input {
    File inputInputGvcF
    File refRefFlatFile
    Boolean perPerExon
    String? optionsOptions
  }
  command <<<
    vtools-gcoverage \
      ~{optionsOptions} \
      ~{if defined(inputInputGvcF) then ("--input-gvcf " +  '"' + inputInputGvcF + '"') else ""} \
      ~{if defined(refRefFlatFile) then ("--refflat-file " +  '"' + refRefFlatFile + '"') else ""} \
      ~{true="--per-exon" false="" perPerExon}
  >>>
}