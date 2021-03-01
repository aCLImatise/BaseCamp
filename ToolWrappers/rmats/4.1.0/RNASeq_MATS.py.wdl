version 1.0

task RNASeqMATSpy {
  input {
    String? gtf
    Int? bone
    Int? b_two
    Int? s_one
    Int? s_two
    Directory? od
    Directory? tmp
    String? type_used_forpairedend
    String? lib_type
    Int? read_length
    Boolean? variable_read_length
    Int? anchor_length
    Int? top_hat_anchor
    File? bi
    Int? n_thread
    Int? t_stat
    Float? cst_at
    String? specify_steps_run
    Boolean? stat_off
    Boolean? paired_stats
    Boolean? novels_s
    Int? mil
    Int? mel
  }
  command <<<
    RNASeq_MATS_py \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(bone) then ("--b1 " +  '"' + bone + '"') else ""} \
      ~{if defined(b_two) then ("--b2 " +  '"' + b_two + '"') else ""} \
      ~{if defined(s_one) then ("--s1 " +  '"' + s_one + '"') else ""} \
      ~{if defined(s_two) then ("--s2 " +  '"' + s_two + '"') else ""} \
      ~{if defined(od) then ("--od " +  '"' + od + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(type_used_forpairedend) then ("-t " +  '"' + type_used_forpairedend + '"') else ""} \
      ~{if defined(lib_type) then ("--libType " +  '"' + lib_type + '"') else ""} \
      ~{if defined(read_length) then ("--readLength " +  '"' + read_length + '"') else ""} \
      ~{if (variable_read_length) then "--variable-read-length" else ""} \
      ~{if defined(anchor_length) then ("--anchorLength " +  '"' + anchor_length + '"') else ""} \
      ~{if defined(top_hat_anchor) then ("--tophatAnchor " +  '"' + top_hat_anchor + '"') else ""} \
      ~{if defined(bi) then ("--bi " +  '"' + bi + '"') else ""} \
      ~{if defined(n_thread) then ("--nthread " +  '"' + n_thread + '"') else ""} \
      ~{if defined(t_stat) then ("--tstat " +  '"' + t_stat + '"') else ""} \
      ~{if defined(cst_at) then ("--cstat " +  '"' + cst_at + '"') else ""} \
      ~{if defined(specify_steps_run) then ("--task " +  '"' + specify_steps_run + '"') else ""} \
      ~{if (stat_off) then "--statoff" else ""} \
      ~{if (paired_stats) then "--paired-stats" else ""} \
      ~{if (novels_s) then "--novelSS" else ""} \
      ~{if defined(mil) then ("--mil " +  '"' + mil + '"') else ""} \
      ~{if defined(mel) then ("--mel " +  '"' + mel + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gtf: "An annotation of genes and transcripts in GTF format"
    bone: "A text file containing a comma separated list of the\\nBAM files for sample_1. (Only if using BAM)"
    b_two: "A text file containing a comma separated list of the\\nBAM files for sample_2. (Only if using BAM)"
    s_one: "A text file containing a comma separated list of the\\nFASTQ files for sample_1. If using paired reads the\\nformat is \\\":\\\" to separate pairs and \\\",\\\" to separate\\nreplicates. (Only if using fastq)"
    s_two: "A text file containing a comma separated list of the\\nFASTQ files for sample_2. If using paired reads the\\nformat is \\\":\\\" to separate pairs and \\\",\\\" to separate\\nreplicates. (Only if using fastq)"
    od: "The directory for final output"
    tmp: "The directory for intermediate output such as \\\".rmats\\\"\\nfiles from the prep step"
    type_used_forpairedend: "Type of read used in the analysis: either \\\"paired\\\" for\\npaired-end data or \\\"single\\\" for single-end data.\\nDefault: paired"
    lib_type: "Library type. Use fr-firststrand or fr-secondstrand\\nfor strand-specific data. Default: fr-unstranded"
    read_length: "The length of each read"
    variable_read_length: "Allow reads with lengths that differ from --readLength\\nto be processed. --readLength will still be used to\\ndetermine IncFormLen and SkipFormLen"
    anchor_length: "The anchor length. Default is 1"
    top_hat_anchor: "The \\\"anchor length\\\" or \\\"overhang length\\\" used in the\\naligner. At least \\\"anchor length\\\" NT must be mapped to\\neach end of a given junction. The default is 6. (Only\\nif using fastq)"
    bi: "The directory name of the STAR binary indices (name of\\nthe directory that contains the SA file). (Only if\\nusing fastq)"
    n_thread: "The number of threads. The optimal number of threads\\nshould be equal to the number of CPU cores. Default: 1"
    t_stat: "The number of threads for the statistical model.\\nDefault: 1"
    cst_at: "The cutoff splicing difference. The cutoff used in the\\nnull hypothesis test for differential splicing. The\\ndefault is 0.0001 for 0.01% difference. Valid: 0 <=\\ncutoff < 1. Does not apply to the paired stats model"
    specify_steps_run: "Specify which step(s) of rMATS to run. Default: both.\\nprep: preprocess BAMs and generate a .rmats file.\\npost: load .rmats file(s) into memory, detect and\\ncount alternative splicing events, and calculate P\\nvalue (if not --statoff). both: prep + post. inte\\n(integrity): check that the BAM filenames recorded by\\nthe prep task(s) match the BAM filenames for the\\ncurrent command line"
    stat_off: "Skip the statistical analysis"
    paired_stats: "Use the paired stats model"
    novels_s: "Enable detection of novel splice sites (unannotated\\nsplice sites). Default is no detection of novel splice\\nsites"
    mil: "Minimum Intron Length. Only impacts --novelSS\\nbehavior. Default: 50"
    mel: "Maximum Exon Length. Only impacts --novelSS behavior.\\nDefault: 500\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_od = "${in_od}"
    Directory out_tmp = "${in_tmp}"
  }
}