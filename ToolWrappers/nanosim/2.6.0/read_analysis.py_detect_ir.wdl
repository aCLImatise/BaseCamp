version 1.0

task ReadAnalysispyDetectIr {
  input {
    File? annotation
    String? read
    File? ref_g
    File? ref_t
    String? aligner
    String? output_name_location
    File? g_al_nm
    File? t_al_nm
    Int? num_threads
  }
  command <<<
    read_analysis_py detect_ir \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if defined(read) then ("--read " +  '"' + read + '"') else ""} \
      ~{if defined(ref_g) then ("--ref_g " +  '"' + ref_g + '"') else ""} \
      ~{if defined(ref_t) then ("--ref_t " +  '"' + ref_t + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(output_name_location) then ("--output " +  '"' + output_name_location + '"') else ""} \
      ~{if defined(g_al_nm) then ("--g_alnm " +  '"' + g_al_nm + '"') else ""} \
      ~{if defined(t_al_nm) then ("--t_alnm " +  '"' + t_al_nm + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nanosim:2.6.0--0"
  }
  parameter_meta {
    annotation: "Annotation file in ensemble GTF/GFF formats"
    read: "Input read for training, not required if alignment\\nfiles are provided"
    ref_g: "Reference genome, not required if genome alignment\\nfile is provided"
    ref_t: "Reference Transcriptome, not required if transcriptome\\nalignment file is provided"
    aligner: "The aligner to be used: minimap2 or LAST (Default =\\nminimap2)"
    output_name_location: "The output name and location"
    g_al_nm: "Genome alignment file in sam or maf format (optional)"
    t_al_nm: "Transcriptome alignment file in sam or maf format\\n(optional)"
    num_threads: "Number of threads for alignment (Default = 1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}