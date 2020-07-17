version 1.0

task GaasAGP2chromosome.pl {
  input {
    String? agp
    String? fast_a
    String? output_gff_file
    String? g
  }
  command <<<
    gaas_AGP2chromosome.pl \
      ~{if defined(agp) then ("--agp " +  '"' + agp + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    agp: "Input AGP file"
    fast_a: "Input fasta file."
    output_gff_file: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
    g: ""
  }
}