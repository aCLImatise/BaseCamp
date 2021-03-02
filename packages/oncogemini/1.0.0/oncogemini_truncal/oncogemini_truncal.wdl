version 1.0

task OncogeminiTruncal {
  input {
    Int? mind_p
    Int? ming_q
    Float? max_norm
    File? patient
    String? samples
    Float? increase
    String? columns
    String? filter
    Boolean? purity
    Boolean? somatic_only
    String? cancers
  }
  command <<<
    oncogemini truncal \
      ~{if defined(mind_p) then ("--minDP " +  '"' + mind_p + '"') else ""} \
      ~{if defined(ming_q) then ("--minGQ " +  '"' + ming_q + '"') else ""} \
      ~{if defined(max_norm) then ("--maxNorm " +  '"' + max_norm + '"') else ""} \
      ~{if defined(patient) then ("--patient " +  '"' + patient + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(increase) then ("--increase " +  '"' + increase + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if (purity) then "--purity" else ""} \
      ~{if (somatic_only) then "--somatic_only" else ""} \
      ~{if defined(cancers) then ("--cancers " +  '"' + cancers + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0"
  }
  parameter_meta {
    mind_p: "Minimum depth required in all samples default is 0)"
    ming_q: "Minimum genotype quality required in all samples (default\\nis 0)"
    max_norm: "Optional: specify a maximum normal sample AF to allow\\n(default is 0)"
    patient: "Specify a patient to filter (should correspond to a\\npatient_id in ped file)"
    samples: "Optional: rather than including all samples, a string of\\ncomma-separated specified samples to use (default is\\n\\\"All\\\")"
    increase: "Optional: add amount to increase truncal AF filter between\\nnormal and tumor samples (default is 0)"
    columns: "A list of columns that you would like returned (default is\\n\\\"*\\\", which returns every column)"
    filter: "Restrictions to apply to variants (SQL syntax)"
    purity: "Using purity estimates in sample manifest file, make\\ncorrections to AF to be used"
    somatic_only: "Only include variants that have been marked as somatic via\\nthe set_somatic command"
    cancers: "Restrict results to variants/genes associated with\\nspecific cancer types by entering a comma-separated string\\nof cancer type abbreviations (see documents for\\nabbreviations) REQUIRES that db include\\ncivic_gene_abbrevations and/or cgi_gene_abbreviations\\n"
  }
  output {
    File out_stdout = stdout()
  }
}