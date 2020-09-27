version 1.0

task Bundlelinks {
  input {
    Int? max_gap
    File? links
  }
  command <<<
    bundlelinks \
      ~{if defined(max_gap) then ("-max_gap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(links) then ("-links " +  '"' + links + '"') else ""}
  >>>
  parameter_meta {
    max_gap: "{-min_bundle_membership NUM | -strict }\\n{-min_bundle_size NUM}\\n{-min_bundle_identity FRACTION}\\n-chr1 CHR1\\n-chr2 CHR2\\n"
    links: ""
  }
  output {
    File out_stdout = stdout()
  }
}