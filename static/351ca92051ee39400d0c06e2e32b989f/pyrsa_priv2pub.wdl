version 1.0

task PyrsaPriv2pub {
  input {
    String? input_filename_reads
    String? output_filename_writes
    String? inform
    String? out_form
  }
  command <<<
    pyrsa-priv2pub \
      ~{if defined(input_filename_reads) then ("--input " +  '"' + input_filename_reads + '"') else ""} \
      ~{if defined(output_filename_writes) then ("--output " +  '"' + output_filename_writes + '"') else ""} \
      ~{if defined(inform) then ("--inform " +  '"' + inform + '"') else ""} \
      ~{if defined(out_form) then ("--outform " +  '"' + out_form + '"') else ""}
  >>>
  parameter_meta {
    input_filename_reads: "Input filename. Reads from stdin if not specified"
    output_filename_writes: "Output filename. Writes to stdout of not specified"
    inform: "key format of input - default PEM"
    out_form: "key format of output - default PEM"
  }
}