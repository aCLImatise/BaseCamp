version 1.0

task AgatSpFixCdsPhasespl {
  input {
    File? gff
    File? fast_a
    String? verbose
    File? output_gff_file
    String? f
    String agat_sp_fix_cds_frame_do_tpl
  }
  command <<<
    agat_sp_fix_cds_phases_pl \
      ~{agat_sp_fix_cds_frame_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Input fasta file."
    verbose: "Add verbosity."
    output_gff_file: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    f: ""
    agat_sp_fix_cds_frame_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}