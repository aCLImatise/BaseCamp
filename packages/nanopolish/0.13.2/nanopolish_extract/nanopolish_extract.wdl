version 1.0

task NanopolishExtract {
  input {
    Boolean? verbose
    Boolean? recurse
    Boolean? fast_q
    Int? type
    String? base_caller
    File? write_output_file
    String extract
    String reads
    String in
    String fast_a
    String format
  }
  command <<<
    nanopolish extract \
      ~{extract} \
      ~{reads} \
      ~{in} \
      ~{fast_a} \
      ~{format} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (recurse) then "--recurse" else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(base_caller) then ("--basecaller " +  '"' + base_caller + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    recurse: "recurse into subdirectories"
    fast_q: "extract fastq (default: fasta)"
    type: "read type: template, complement, 2d, 2d-or-template, any\\n(default: 2d-or-template)"
    base_caller: "[:VERSION]      consider only data produced by basecaller NAME,\\noptionally with given exact VERSION"
    write_output_file: "write output to FILE"
    extract: ""
    reads: ""
    in: ""
    fast_a: ""
    format: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}