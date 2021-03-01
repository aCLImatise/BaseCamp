version 1.0

task AgatSpClipNSeqExtremitiesAndFixCoordinatespl {
  input {
    File? gff
    File? fast_a
    File? of
    File? og
    String agat_sp_clip_n_seq_extremities_and_fix_coordinates_do_tpl
    String consistent
  }
  command <<<
    agat_sp_clipN_seqExtremities_and_fixCoordinates_pl \
      ~{agat_sp_clip_n_seq_extremities_and_fix_coordinates_do_tpl} \
      ~{consistent} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (of) then "--of" else ""} \
      ~{if (og) then "--og" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Input fasta file."
    of: "Output fixed fasta file. If no output file is specified, the\\noutput will be written to STDOUT."
    og: "Output fixed GFF file. If no output file is specified, the\\noutput will be written to STDOUT"
    agat_sp_clip_n_seq_extremities_and_fix_coordinates_do_tpl: "Description:"
    consistent: "Usage:\\nagat_sp_clipN_seqExtremities_and_fixCoordinates.pl -g infile.gff -f infile.fasta  [ -o outfile ]\\nagat_sp_clipN_seqExtremities_and_fixCoordinates.pl --help"
  }
  output {
    File out_stdout = stdout()
    File out_of = "${in_of}"
    File out_og = "${in_og}"
  }
}