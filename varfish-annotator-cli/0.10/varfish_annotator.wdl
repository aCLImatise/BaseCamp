version 1.0

task VarfishAnnotator {
  input {
    Boolean clinClinVarPath
    Boolean hgmdHgmdPublic
    Boolean regionRegion
    Boolean thousandThousandGenomesPath
    Boolean caseCaseId
    Boolean contigContigRegex
    Boolean setSetId
    Boolean caseCaseId
    Boolean contigContigRegex
    Boolean setSetId
  }
  command <<<
    varfish-annotator \
      ~{true="--clinvar-path" false="" clinClinVarPath} \
      ~{true="--hgmd-public" false="" hgmdHgmdPublic} \
      ~{true="--region" false="" regionRegion} \
      ~{true="--thousand-genomes-path" false="" thousandThousandGenomesPath} \
      ~{true="--case-id" false="" caseCaseId} \
      ~{true="--contig-regex" false="" contigContigRegex} \
      ~{true="--set-id" false="" setSetId} \
      ~{true="--case-id" false="" caseCaseId} \
      ~{true="--contig-regex" false="" contigContigRegex} \
      ~{true="--set-id" false="" setSetId}
  >>>
}