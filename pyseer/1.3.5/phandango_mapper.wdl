version 1.0

task PhandangoMapper {
  input {
    String bwaBwa
    String tmpTmpPrefix
    Boolean useUseFilterP
    String? kmKmErs
    String? referenceReference
    String? outputOutput
  }
  command <<<
    phandango_mapper \
      ~{kmKmErs} \
      ~{if defined(bwaBwa) then ("--bwa " +  '"' + bwaBwa + '"') else ""} \
      ~{if defined(tmpTmpPrefix) then ("--tmp-prefix " +  '"' + tmpTmpPrefix + '"') else ""} \
      ~{true="--use-filter-p" false="" useUseFilterP} \
      ~{referenceReference} \
      ~{outputOutput}
  >>>
}