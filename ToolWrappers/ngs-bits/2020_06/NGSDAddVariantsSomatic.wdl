version 1.0

task NGSDAddVariantsSomatic {
  input {
    String? t_ps
    String? n_ps
    File? var
    Boolean? var_force
    File? cnv
    Boolean? cnv_force
    File? out
    Boolean? test
    Boolean? debug
    Boolean? no_time
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDAddVariantsSomatic \
      ~{if defined(t_ps) then ("-t_ps " +  '"' + t_ps + '"') else ""} \
      ~{if defined(n_ps) then ("-n_ps " +  '"' + n_ps + '"') else ""} \
      ~{if defined(var) then ("-var " +  '"' + var + '"') else ""} \
      ~{if (var_force) then "-var_force" else ""} \
      ~{if defined(cnv) then ("-cnv " +  '"' + cnv + '"') else ""} \
      ~{if (cnv_force) then "-cnv_force" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (no_time) then "-no_time" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    t_ps: "Tumor processed sample name"
    n_ps: "Normal processed sample name"
    var: "Small variant list (i.e. SNVs and small INDELs) in GSvar format (as produced by megSAP).\\nDefault value: ''"
    var_force: "Force import of detected small variants, even if already imported.\\nDefault value: 'false'"
    cnv: "CNV list in TSV format (as produced by megSAP).\\nDefault value: ''"
    cnv_force: "Force import of CNVs, even if already imported.\\nDefault value: 'false'"
    out: "Output file. If unset, writes to STDOUT.\\nDefault value: ''"
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