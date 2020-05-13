version 1.0

task DepEnsure {
  input {
    Boolean addAdd
    Boolean dryDryRun
    Boolean examplesExamples
    Boolean noNoVendor
    Boolean updateUpdate
    Boolean vV
    Boolean vendorVendorOnly
  }
  command <<<
    dep ensure \
      ~{true="-add" false="" addAdd} \
      ~{true="-dry-run" false="" dryDryRun} \
      ~{true="-examples" false="" examplesExamples} \
      ~{true="-no-vendor" false="" noNoVendor} \
      ~{true="-update" false="" updateUpdate} \
      ~{true="-v" false="" vV} \
      ~{true="-vendor-only" false="" vendorVendorOnly}
  >>>
}