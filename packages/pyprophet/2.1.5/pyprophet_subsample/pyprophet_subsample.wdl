version 1.0

task PyprophetSubsample {
  input {
    File? in
    File? out
    Float? subsample_ratio
    Boolean? test
  }
  command <<<
    pyprophet subsample \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(subsample_ratio) then ("--subsample_ratio " +  '"' + subsample_ratio + '"') else ""} \
      ~{if (test) then "--test" else ""}
  >>>
  parameter_meta {
    in: "OpenSWATH input file.  [required]"
    out: "Subsampled OSWS output file."
    subsample_ratio: "Subsample ratio used per input file.  [default: 1]"
    test: "/ --no-test       Run in test mode with fixed seed.  [default: False]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}