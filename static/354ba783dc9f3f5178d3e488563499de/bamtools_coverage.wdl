version 1.0

task BamtoolsCoverage {
  input {
    String? in
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
}