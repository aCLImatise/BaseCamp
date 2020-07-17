version 1.0

task NGSDAddVariantsGermline {
  input {
    String? ps
    File? var
    Boolean? var_force
    File? cnv
    Boolean? cnv_force
    File? out
    Float? max_af
    Boolean? test
    Boolean? debug
    Boolean? no_time
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDAddVariantsGermline \
      ~{if defined(ps) then ("-ps " +  '"' + ps + '"') else ""} \
      ~{if defined(var) then ("-var " +  '"' + var + '"') else ""} \
      ~{true="-var_force" false="" var_force} \
      ~{if defined(cnv) then ("-cnv " +  '"' + cnv + '"') else ""} \
      ~{true="-cnv_force" false="" cnv_force} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(max_af) then ("-max_af " +  '"' + max_af + '"') else ""} \
      ~{true="-test" false="" test} \
      ~{true="-debug" false="" debug} \
      ~{true="-no_time" false="" no_time} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    ps: "Processed sample name"
    var: "Small variant list in GSvar format (as produced by megSAP). Default value: ''"
    var_force: "Force import of small variants, even if already imported. Default value: 'false'"
    cnv: "CNV list in TSV format (as produced by megSAP). Default value: ''"
    cnv_force: "Force import of CNVs, even if already imported. Default value: 'false'"
    out: "Output file. If unset, writes to STDOUT. Default value: ''"
    max_af: "Maximum allele frequency of small variants to import (1000g and gnomAD). Default value: '0.05'"
    test: "Uses the test database instead of on the production database. Default value: 'false'"
    debug: "Enable verbose debug output. Default value: 'false'"
    no_time: "Disable timing output. Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}