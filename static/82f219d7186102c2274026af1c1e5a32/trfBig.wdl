version 1.0

task TrfBig {
  input {
    String? bed
    File? bed_at
    String? tempdir
    String? trf
    String? max_period
    Boolean? keep
    String? when_used_here
    String in_file
    String outfile
  }
  command <<<
    trfBig \
      ~{in_file} \
      ~{outfile} \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bed_at) then ("-bedAt " +  '"' + bed_at + '"') else ""} \
      ~{if defined(tempdir) then ("-tempDir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(trf) then ("-trf " +  '"' + trf + '"') else ""} \
      ~{if defined(max_period) then ("-maxPeriod " +  '"' + max_period + '"') else ""} \
      ~{true="-keep" false="" keep} \
      ~{if defined(when_used_here) then ("-l " +  '"' + when_used_here + '"') else ""}
  >>>
  parameter_meta {
    bed: "a bed file in current dir"
    bed_at: "- create a bed file at explicit location"
    tempdir: "Where to put temp files."
    trf: "explicitly specifies trf executable name"
    max_period: "Maximum period size of repeat (default 2000)"
    keep: "don't delete tmp files"
    when_used_here: "when used here, for new trf v4.09 option: maximum TR length expected (in millions) (eg, -l=3 for 3 million), Human genome hg38 would need -l=6"
    in_file: ""
    outfile: ""
  }
}