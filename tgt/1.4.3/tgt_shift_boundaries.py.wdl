version 1.0

task Tgtshiftboundariespy {
  input {
    File? encoding
    String? format
    File? outfile
  }
  command <<<
    tgt_shift_boundaries_py \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    encoding: "file encoding (default \\\"utf-8\\\")"
    format: "the output format (default \\\"short\\\")"
    outfile: "the output file (defaults to\\ninputfile.shifted.Extension)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}