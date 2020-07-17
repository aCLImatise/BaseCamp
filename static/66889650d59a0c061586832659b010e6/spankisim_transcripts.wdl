version 1.0

task SpankisimTranscripts {
  input {
    String? output_directory_default
    String? reference_gtf
    String? fasta_file
    String? cov
    String? rpk
    String? file_transcripts_sim
    String? bp
    String? ends
    String? start_selection_mode
    String? error_model_random
    String? m_dir
    String? ir
    String? frag
    String? frag_fixed
  }
  command <<<
    spankisim_transcripts \
      ~{if defined(output_directory_default) then ("-o " +  '"' + output_directory_default + '"') else ""} \
      ~{if defined(reference_gtf) then ("-g " +  '"' + reference_gtf + '"') else ""} \
      ~{if defined(fasta_file) then ("-f " +  '"' + fasta_file + '"') else ""} \
      ~{if defined(cov) then ("-cov " +  '"' + cov + '"') else ""} \
      ~{if defined(rpk) then ("-rpk " +  '"' + rpk + '"') else ""} \
      ~{if defined(file_transcripts_sim) then ("-t " +  '"' + file_transcripts_sim + '"') else ""} \
      ~{if defined(bp) then ("-bp " +  '"' + bp + '"') else ""} \
      ~{if defined(ends) then ("-ends " +  '"' + ends + '"') else ""} \
      ~{if defined(start_selection_mode) then ("-s " +  '"' + start_selection_mode + '"') else ""} \
      ~{if defined(error_model_random) then ("-m " +  '"' + error_model_random + '"') else ""} \
      ~{if defined(m_dir) then ("-mdir " +  '"' + m_dir + '"') else ""} \
      ~{if defined(ir) then ("-ir " +  '"' + ir + '"') else ""} \
      ~{if defined(frag) then ("-frag " +  '"' + frag + '"') else ""} \
      ~{if defined(frag_fixed) then ("-fragfixed " +  '"' + frag_fixed + '"') else ""}
  >>>
  parameter_meta {
    output_directory_default: "Output directory (default: ./sims_out/)"
    reference_gtf: "Reference GTF"
    fasta_file: "Fasta file"
    cov: "Coverage to sim [Default: if nothing specified, coverage=1 for all transcripts]"
    rpk: "RPK to sim"
    file_transcripts_sim: "File of transcripts to sim"
    bp: "Read length (default: 75)"
    ends: "Number of mates (1=single (default) or 2=paired ends) (default: 1)"
    start_selection_mode: "Start selection mode (default: random)"
    error_model_random: "Error model [random,errorfree,NIST,dm3,flyheads, or custom] (default: random)"
    m_dir: "Custom error model directory (default: none)"
    ir: "Intron_retention [0 to 1 (eg 0.2 = 20 percent retention)] (default: 0)"
    frag: "Fragment_size (default: 200)"
    frag_fixed: "Fixed_fragment_size (T=True, F=False) (default: F)"
  }
}