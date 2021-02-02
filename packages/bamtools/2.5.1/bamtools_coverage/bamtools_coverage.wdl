version 1.0

task BamtoolsCoverage {
  input {
    File? in
    File? out
  }
  command <<<
    bamtools coverage \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    in: "the input BAM file [stdin]"
    out: "the output file [stdout]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}