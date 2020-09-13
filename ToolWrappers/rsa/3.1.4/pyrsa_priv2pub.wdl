version 1.0

task Pyrsapriv2pub {
  input {
    File? input_filename_reads
    File? output_filename_writes
    String? inform
    String? out_form
  }
  command <<<
    pyrsa_priv2pub \
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
  output {
    File out_stdout = stdout()
    File out_output_filename_writes = "${in_output_filename_writes}"
  }
}