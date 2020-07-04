version 1.0

task AgatSpFixCdsPhases.pl {
  input {
    String? gff
    String? fast_a
    String? verbose
    String? output_gff_file
    String? f
    String agat_sp_fix_cds_frame_do_tpl
  }
  command <<<
    agat_sp_fix_cds_phases.pl \
      ~{agat_sp_fix_cds_frame_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Input fasta file."
    verbose: "Add verbosity."
    output_gff_file: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
    f: ""
    agat_sp_fix_cds_frame_do_tpl: ""
  }
}