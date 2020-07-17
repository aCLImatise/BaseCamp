version 1.0

task GaasFastaFilterBySize.pl {
  input {
    String? fast_a
    Boolean? size
    String? output_fasta_file
    String gaas_fast_a_filer_by_size_do_tpl
  }
  command <<<
    gaas_fasta_filter_by_size.pl \
      ~{gaas_fast_a_filer_by_size_do_tpl} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--size" false="" size} \
      ~{if defined(output_fasta_file) then ("--output " +  '"' + output_fasta_file + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "Input fasta file."
    size: "Integer corresponding to a size in bp. Default value 1000. Sequence under the value will be discarded from the output."
    output_fasta_file: "Output fasta file. If no output file is specified, the output will be written to STDOUT."
    gaas_fast_a_filer_by_size_do_tpl: ""
  }
}