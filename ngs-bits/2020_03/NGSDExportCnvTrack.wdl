version 1.0

task NGSDExportCnvTrack {
  input {
    File? out
    String? system
    Float? min_dp
    Float? max_cn_vs
    Float? min_af
    String? caller_version
    File? stats
    Boolean? test
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDExportCnvTrack \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(system) then ("-system " +  '"' + system + '"') else ""} \
      ~{if defined(min_dp) then ("-min_dp " +  '"' + min_dp + '"') else ""} \
      ~{if defined(max_cn_vs) then ("-max_cnvs " +  '"' + max_cn_vs + '"') else ""} \
      ~{if defined(min_af) then ("-min_af " +  '"' + min_af + '"') else ""} \
      ~{if defined(caller_version) then ("-caller_version " +  '"' + caller_version + '"') else ""} \
      ~{if defined(stats) then ("-stats " +  '"' + stats + '"') else ""} \
      ~{true="-test" false="" test} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    out: "Output IGV file."
    system: "Processing system name filter (short name). Default value: ''"
    min_dp: "Minimum depth of the processed sample. Default value: '0'"
    max_cn_vs: "Maximum number of CNVs per sample. Default value: '0'"
    min_af: "Minimum allele frequency of output CNV ranges. Default value: '0.01'"
    caller_version: "Restrict output to callsets with this caller version. Default value: ''"
    stats: "Statistics and logging output. If unset, writes to STDOUT Default value: ''"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}