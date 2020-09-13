version 1.0

task ReadAnalysispyTranscriptome {
  input {
    String? read
    String? ref_g
    String? ref_t
    File? annotation
    String? aligner
    File? g_al_nm
    File? t_al_nm
    String? location_prefix_outputting
    Boolean? no_model_fit
    Boolean? no_intron_retention
    Int? num_threads
  }
  command <<<
    read_analysis_py transcriptome \
      ~{if defined(read) then ("--read " +  '"' + read + '"') else ""} \
      ~{if defined(ref_g) then ("--ref_g " +  '"' + ref_g + '"') else ""} \
      ~{if defined(ref_t) then ("--ref_t " +  '"' + ref_t + '"') else ""} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(g_al_nm) then ("--g_alnm " +  '"' + g_al_nm + '"') else ""} \
      ~{if defined(t_al_nm) then ("--t_alnm " +  '"' + t_al_nm + '"') else ""} \
      ~{if defined(location_prefix_outputting) then ("--output " +  '"' + location_prefix_outputting + '"') else ""} \
      ~{if (no_model_fit) then "--no_model_fit" else ""} \
      ~{if (no_intron_retention) then "--no_intron_retention" else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""}
  >>>
  parameter_meta {
    read: "Input read for training"
    ref_g: "Reference genome"
    ref_t: "Reference Transcriptome"
    annotation: "Annotation file in ensemble GTF/GFF formats, required\\nfor intron retention detection"
    aligner: "The aligner to be used: minimap2 or LAST (Default =\\nminimap2)"
    g_al_nm: "Genome alignment file in sam or maf format (optional)"
    t_al_nm: "Transcriptome alignment file in sam or maf format\\n(optional)"
    location_prefix_outputting: "The location and prefix of outputting profiles\\n(Default = training)"
    no_model_fit: "Disable model fitting step"
    no_intron_retention: "Disable Intron Retention analysis"
    num_threads: "Number of threads for alignment and model fitting\\n(Default = 1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}