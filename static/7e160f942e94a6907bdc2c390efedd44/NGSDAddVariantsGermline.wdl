version 1.0

task NGSDAddVariantsGermline {
  input {
    String? ps
    File? var
    Boolean? var_force
    File? cnv
    Boolean? cnv_force
    File? sv
    Boolean? sv_force
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
      ~{if (var_force) then "-var_force" else ""} \
      ~{if defined(cnv) then ("-cnv " +  '"' + cnv + '"') else ""} \
      ~{if (cnv_force) then "-cnv_force" else ""} \
      ~{if defined(sv) then ("-sv " +  '"' + sv + '"') else ""} \
      ~{if (sv_force) then "-sv_force" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(max_af) then ("-max_af " +  '"' + max_af + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (no_time) then "-no_time" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    ps: "Processed sample name"
    var: "Small variant list in GSvar format (as produced by megSAP).\\nDefault value: ''"
    var_force: "Force import of small variants, even if already imported.\\nDefault value: 'false'"
    cnv: "CNV list in TSV format (as produced by megSAP).\\nDefault value: ''"
    cnv_force: "Force import of CNVs, even if already imported.\\nDefault value: 'false'"
    sv: "SV list in BEDPE format (as produced by megSAP).\\nDefault value: ''"
    sv_force: "Force import of SVs, even if already imported.\\nDefault value: 'false'"
    out: "Output file. If unset, writes to STDOUT.\\nDefault value: ''"
    max_af: "Maximum allele frequency of small variants to import (1000g and gnomAD).\\nDefault value: '0.05'"
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    debug: "Enable verbose debug output.\\nDefault value: 'false'"
    no_time: "Disable timing output.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}