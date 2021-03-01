version 1.0

task Unquip {
  input {
    String? input_format_guessed
    String? output_format_guessed
    Boolean? decompress
    String? reference
    Boolean? assembly
    Int? assembly_n
    Boolean? test
    Boolean? list
    Boolean? stdout
    Boolean? force
    Boolean? verbose
    String quip
  }
  command <<<
    unquip \
      ~{quip} \
      ~{if defined(input_format_guessed) then ("--input " +  '"' + input_format_guessed + '"') else ""} \
      ~{if defined(output_format_guessed) then ("--output " +  '"' + output_format_guessed + '"') else ""} \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (assembly) then "--assembly" else ""} \
      ~{if defined(assembly_n) then ("--assembly-n " +  '"' + assembly_n + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/quip:1.1.8--hed695b0_0"
  }
  parameter_meta {
    input_format_guessed: "input format (guessed by default)"
    output_format_guessed: "output format (guessed by default)"
    decompress: "decompress (equivalent to '--input=quip')"
    reference: "use a reference sequence (in the FASTA format)\\nto compress aligned reads"
    assembly: "use de novo assembly to potentially increase\\ncompression at the cost of being somewhat slower."
    assembly_n: "assemble the first n reads (implies --assembly)\\n(default: 2500000)"
    test: "test compressed file integrity"
    list: "list total number of reads and bases"
    stdout: "write on standard output"
    force: "allow overwriting of output files, etc"
    verbose: "output a great deal of useless information"
    quip: ""
  }
  output {
    File out_stdout = stdout()
  }
}