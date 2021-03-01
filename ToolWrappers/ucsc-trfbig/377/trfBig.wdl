version 1.0

task TrfBig {
  input {
    File? bed
    File? bed_at
    String? tempdir
    String? trf
    Int? max_period
    Boolean? keep
    Int? when_used_here
    String in_file
  }
  command <<<
    trfBig \
      ~{in_file} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bed_at) then ("-bedAt " +  '"' + bed_at + '"') else ""} \
      ~{if defined(tempdir) then ("-tempDir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(trf) then ("-trf " +  '"' + trf + '"') else ""} \
      ~{if defined(max_period) then ("-maxPeriod " +  '"' + max_period + '"') else ""} \
      ~{if (keep) then "-keep" else ""} \
      ~{if defined(when_used_here) then ("-l " +  '"' + when_used_here + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "a bed file in current dir"
    bed_at: "- create a bed file at explicit location"
    tempdir: "Where to put temp files."
    trf: "explicitly specifies trf executable name"
    max_period: "Maximum period size of repeat (default 2000)"
    keep: "don't delete tmp files"
    when_used_here: "when used here, for new trf v4.09 option:\\nmaximum TR length expected (in millions)\\n(eg, -l=3 for 3 million), Human genome hg38 would need -l=6\\n"
    in_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}