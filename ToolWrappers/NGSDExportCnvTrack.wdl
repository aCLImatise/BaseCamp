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
      ~{if (test) then "-test" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    out: "Output IGV file."
    system: "Processing system name filter (short name).\\nDefault value: ''"
    min_dp: "Minimum depth of the processed sample.\\nDefault value: '0'"
    max_cn_vs: "Maximum number of CNVs per sample.\\nDefault value: '0'"
    min_af: "Minimum allele frequency of output CNV ranges.\\nDefault value: '0.01'"
    caller_version: "Restrict output to callsets with this caller version.\\nDefault value: ''"
    stats: "Statistics and logging output. If unset, writes to STDOUT\\nDefault value: ''"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}