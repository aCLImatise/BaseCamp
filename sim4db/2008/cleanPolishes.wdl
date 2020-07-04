version 1.0

task CleanPolishes {
  input {
    Boolean? threshold
    Boolean? quiet
    Boolean? before_after
    Boolean? segregate
    Boolean? gff_three
    Boolean? save_junk
    Boolean? debug
  }
  command <<<
    cleanPolishes \
      ~{true="-threshold" false="" threshold} \
      ~{true="-quiet" false="" quiet} \
      ~{true="-beforeafter" false="" before_after} \
      ~{true="-segregate" false="" segregate} \
      ~{true="-gff3" false="" gff_three} \
      ~{true="-savejunk" false="" save_junk} \
      ~{true="-debug" false="" debug}
  >>>
  parameter_meta {
    threshold: "Introns bigger than this are candidates for trimming (default = 100000)."
    quiet: "Don't print unmodified matches"
    before_after: "Save (in separate files) the before/after of each modified match"
    segregate: "Save (in separate files) the after of each modified match"
    gff_three: "Write output in GFF3 format"
    save_junk: "Also print the trimmed pieces (as separate matches)"
    debug: ""
  }
}