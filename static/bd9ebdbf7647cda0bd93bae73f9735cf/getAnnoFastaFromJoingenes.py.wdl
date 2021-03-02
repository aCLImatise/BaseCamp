version 1.0

task GetAnnoFastaFromJoingenespy {
  input {
    File? genome
    File? out
    Int? table
    String? filter_out_invalid_stops
    Boolean? print_format_examples
    File? gtf
    Int? gff_three
  }
  command <<<
    getAnnoFastaFromJoingenes_py \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(filter_out_invalid_stops) then ("--filter_out_invalid_stops " +  '"' + filter_out_invalid_stops + '"') else ""} \
      ~{if (print_format_examples) then "--print_format_examples" else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(gff_three) then ("--gff3 " +  '"' + gff_three + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome: "genome sequence file (FASTA-format)"
    out: "name stem pf output file with coding sequences and\\nprotein sequences (FASTA-format); will be extended by\\n.codingseq/.aa"
    table: "Translational code table number (INT)"
    filter_out_invalid_stops: "Suppress output of protein sequences that contain\\ninternal stop codons."
    print_format_examples: "Print gtf/gff3 input format examples, do not perform\\nanalysis"
    gtf: "file with CDS coordinates (GTF-format)"
    gff_three: "file with CDS coordinates (GFF3 format)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}