version 1.0

task OncogeminiBottleneck {
  input {
    Int? mind_p
    Int? ming_q
    Float? max_norm
    Float? min_slope
    Float? min_r
    String? samples
    Float? min_end
    Float? end_diff
    String? patient
    String? columns
    String? filter
    Boolean? purity
    Boolean? somatic_only
    String? cancers
    String db
  }
  command <<<
    oncogemini bottleneck \
      ~{db} \
      ~{if defined(mind_p) then ("--minDP " +  '"' + mind_p + '"') else ""} \
      ~{if defined(ming_q) then ("--minGQ " +  '"' + ming_q + '"') else ""} \
      ~{if defined(max_norm) then ("--maxNorm " +  '"' + max_norm + '"') else ""} \
      ~{if defined(min_slope) then ("--minSlope " +  '"' + min_slope + '"') else ""} \
      ~{if defined(min_r) then ("--minR " +  '"' + min_r + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(min_end) then ("--minEnd " +  '"' + min_end + '"') else ""} \
      ~{if defined(end_diff) then ("--endDiff " +  '"' + end_diff + '"') else ""} \
      ~{if defined(patient) then ("--patient " +  '"' + patient + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{true="--purity" false="" purity} \
      ~{true="--somatic_only" false="" somatic_only} \
      ~{if defined(cancers) then ("--cancers " +  '"' + cancers + '"') else ""}
  >>>
  parameter_meta {
    mind_p: "Minimum depth required in all samples default is 0)"
    ming_q: "Minimum genotype quality required in all samples (default is 0)"
    max_norm: "Specify a maximum normal sample AF to allow (default is 0)"
    min_slope: "Minimum slope required for the AFs across samples (default is 0.05)"
    min_r: "Minimum r correlation coefficient required for AFs (default is 0.5)"
    samples: "Rather than including all samples, a string of comma- separated specified samples to use (default is \"All\")"
    min_end: "Minimum AF required of the sample representing the final timepoint (default is 0)"
    end_diff: "Minimum required AF difference between the samples representing the first and final timepoints (default is 0)"
    patient: "Specify a patient to filter (should correspond to a patient_id in ped file)"
    columns: "A list of columns that you would like returned (default is \"*\", which returns every column)"
    filter: "Restrictions to apply to variants (SQL syntax)"
    purity: "Using purity estimates in ped file, make corrections to AF to be used"
    somatic_only: "Only include variants that have been marked as somatic via the set_somatic command"
    cancers: "Restrict results to variants/genes associated with specific cancer types by entering a comma-separated string of cancer type abbreviations (see documents for abbreviations) REQUIRES that db include civic_gene_abbrevations and/or cgi_gene_abbreviations"
    db: "The name of the database to be queried"
  }
}