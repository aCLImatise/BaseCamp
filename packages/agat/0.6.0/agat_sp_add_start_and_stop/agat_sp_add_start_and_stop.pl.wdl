version 1.0

task AgatSpAddStartAndStoppl {
  input {
    File? gff
    File? fast_a
    Int? codon
    File? output_gff_file
    Boolean? verbose_debugging_purpose
    String agat_sp_add_start_and_stop_do_tpl_do_tpl
  }
  command <<<
    agat_sp_add_start_and_stop_pl \
      ~{agat_sp_add_start_and_stop_do_tpl_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(codon) then ("--codon " +  '"' + codon + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if (verbose_debugging_purpose) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.0--pl526r35_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Input fasta file. Needed to check that CDS sequences start by\\nstart codon and stop by stop codon."
    codon: "Codon table to use. [default 1]"
    output_gff_file: "Output gff file updated"
    verbose_debugging_purpose: "Verbose for debugging purpose."
    agat_sp_add_start_and_stop_do_tpl_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}