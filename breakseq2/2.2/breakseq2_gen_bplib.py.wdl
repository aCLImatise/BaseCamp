version 1.0

task Breakseq2GenBplibpy {
  input {
    String? reference
    String? output_fasta_generate
    Array[String] chromosomes
    String? log
    String? bp_lib_gff
    Int? junction_length
    String? format_version
  }
  command <<<
    breakseq2_gen_bplib_py \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(output_fasta_generate) then ("--output " +  '"' + output_fasta_generate + '"') else ""} \
      ~{if defined(chromosomes) then ("--chromosomes " +  '"' + chromosomes + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(bp_lib_gff) then ("--bplib_gff " +  '"' + bp_lib_gff + '"') else ""} \
      ~{if defined(junction_length) then ("--junction_length " +  '"' + junction_length + '"') else ""} \
      ~{if defined(format_version) then ("--format_version " +  '"' + format_version + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference FASTA (default: None)"
    output_fasta_generate: "Output FASTA to generate. Leave unspecified for stdout\\n(default: None)"
    chromosomes: "List of chromosomes to process (default: [])"
    log: "Log level (default: INFO)"
    bp_lib_gff: "Breakpoint GFF input (default: None)"
    junction_length: "Junction length (default: 200)"
    format_version: "Version of breakpoint library format to use (default:\\n2)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}