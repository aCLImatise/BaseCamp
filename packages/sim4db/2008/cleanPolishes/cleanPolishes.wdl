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
      ~{if (threshold) then "-threshold" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (before_after) then "-beforeafter" else ""} \
      ~{if (segregate) then "-segregate" else ""} \
      ~{if (gff_three) then "-gff3" else ""} \
      ~{if (save_junk) then "-savejunk" else ""} \
      ~{if (debug) then "-debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threshold: "Introns bigger than this are candidates for trimming (default = 100000)."
    quiet: "Don't print unmodified matches"
    before_after: "Save (in separate files) the before/after of each modified match"
    segregate: "Save (in separate files) the after of each modified match"
    gff_three: "Write output in GFF3 format"
    save_junk: "Also print the trimmed pieces (as separate matches)"
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}