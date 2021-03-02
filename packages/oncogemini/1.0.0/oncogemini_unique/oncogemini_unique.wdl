version 1.0

task OncogeminiUnique {
  input {
    Int? mind_p
    Int? ming_q
    String? specific
    Float? max_others
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
    oncogemini unique \
      ~{if defined(mind_p) then ("--minDP " +  '"' + mind_p + '"') else ""} \
      ~{if defined(ming_q) then ("--minGQ " +  '"' + ming_q + '"') else ""} \
      ~{if defined(specific) then ("--specific " +  '"' + specific + '"') else ""} \
      ~{if defined(max_others) then ("--maxOthers " +  '"' + max_others + '"') else ""} \
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
    specific: "Identify unique variants that exist only in samples from\\nthis comma-separated list"
    max_others: "Specify a maximum sample AF to allow in other samples\\n(default is 0)"
    patient: "Specify a patient to filter (should correspond to a\\npatient_id in ped file)"
    samples: "Rather than including all samples in filters, a string of\\ncomma-separated specified samples to use (default is\\n\\\"All\\\")"
    increase: "Add amount to increase AF filter between unique and other\\nsamples (default is 0)"
    columns: "A list of columns that you would like returned (default\\nis \\\"*\\\", which returns every column)"
    filter: "Restrictions to apply to variants (SQL syntax)"
    purity: "Using purity estimates in sample manifest file, make\\ncorrections to AF to be used"
    somatic_only: "Only include variants that have been marked as somatic\\nvia the set_somatic command"
    cancers: "Restrict results to variants/genes associated with\\nspecific cancer types by entering a comma-separated\\nstring of cancer type abbreviations (see documents for\\nabbreviations) REQUIRES that db include\\ncivic_gene_abbrevations and/or cgi_gene_abbreviations\\n"
  }
  output {
    File out_stdout = stdout()
  }
}