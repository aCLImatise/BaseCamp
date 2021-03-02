version 1.0

task Deseq2Preprocesspy {
  input {
    Boolean? debug
    String? var
    File? data
    File? out_r_data
    File? log_file
  }
  command <<<
    deseq2_preprocess_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(var) then ("--var " +  '"' + var + '"') else ""} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(out_r_data) then ("--out-Rdata " +  '"' + out_r_data + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.0--py37_0"
  }
  parameter_meta {
    debug: "Keep temporary files to debug program."
    var: "Experimental variable suspected to have an impact on\\nOTUs abundances. You may precise complexe string such\\nas variables with confounding effect (ex:\\nTreatment+Gender or Treatmet*Gender)"
    data: "The path of RData file containing a phyloseq object,\\nresult of FROGS Phyloseq Import Data"
    out_r_data: "The path to store resulting dataframe of DESeq2.\\n[Default: DESeq2_preprocess.Rdata]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}