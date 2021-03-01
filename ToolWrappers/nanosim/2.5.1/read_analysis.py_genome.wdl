version 1.0

task ReadAnalysispyGenome {
  input {
    String? read
    File? ref_g
    String? aligner
    File? g_al_nm
    String? location_prefix_training
    Boolean? no_model_fit
    Int? num_threads
  }
  command <<<
    read_analysis_py genome \
      ~{if defined(read) then ("--read " +  '"' + read + '"') else ""} \
      ~{if defined(ref_g) then ("--ref_g " +  '"' + ref_g + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(g_al_nm) then ("--g_alnm " +  '"' + g_al_nm + '"') else ""} \
      ~{if defined(location_prefix_training) then ("--output " +  '"' + location_prefix_training + '"') else ""} \
      ~{if (no_model_fit) then "--no_model_fit" else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read: "Input read for training"
    ref_g: "Reference genome, not required if genome alignment\\nfile is provided"
    aligner: "The aligner to be used, minimap2 or LAST (Default =\\nminimap2)"
    g_al_nm: "Genome alignment file in sam or maf format (optional)"
    location_prefix_training: "The location and prefix of outputting profiles\\n(Default = training)"
    no_model_fit: "Disable model fitting step"
    num_threads: "Number of threads for alignment and model fitting\\n(Default = 1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}