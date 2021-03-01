version 1.0

task Hmmpfam2 {
  input {
    Boolean? nucleic_acid_modelssequence
    String? sets_alignment_limit
    Int? sets_e_value
    String? sets_bit_threshold
    String? sets_z_models
    Boolean? acc
    Boolean? compat
    String? cpu
    Boolean? cut_ga
    Boolean? cut_nc
    Boolean? cut_tc
    Int? dome
    Int? do_mt
    Boolean? forward
    File? in_format
    Boolean? null_two
    Boolean? pvm
    Boolean? xnu
    Boolean? options
    String hmmpfam
    String hmm_database
    File sequence_file_or_database
  }
  command <<<
    hmmpfam2 \
      ~{hmmpfam} \
      ~{hmm_database} \
      ~{sequence_file_or_database} \
      ~{if (nucleic_acid_modelssequence) then "-n" else ""} \
      ~{if defined(sets_alignment_limit) then ("-A " +  '"' + sets_alignment_limit + '"') else ""} \
      ~{if defined(sets_e_value) then ("-E " +  '"' + sets_e_value + '"') else ""} \
      ~{if defined(sets_bit_threshold) then ("-T " +  '"' + sets_bit_threshold + '"') else ""} \
      ~{if defined(sets_z_models) then ("-Z " +  '"' + sets_z_models + '"') else ""} \
      ~{if (acc) then "--acc" else ""} \
      ~{if (compat) then "--compat" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (cut_ga) then "--cut_ga" else ""} \
      ~{if (cut_nc) then "--cut_nc" else ""} \
      ~{if (cut_tc) then "--cut_tc" else ""} \
      ~{if defined(dome) then ("--domE " +  '"' + dome + '"') else ""} \
      ~{if defined(do_mt) then ("--domT " +  '"' + do_mt + '"') else ""} \
      ~{if (forward) then "--forward" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (null_two) then "--null2" else ""} \
      ~{if (pvm) then "--pvm" else ""} \
      ~{if (xnu) then "--xnu" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nucleic_acid_modelssequence: ": nucleic acid models/sequence (default protein)"
    sets_alignment_limit: ": sets alignment output limit to <n> best domain alignments"
    sets_e_value: ": sets E value cutoff (globE) to <x>; default 10"
    sets_bit_threshold: ": sets T bit threshold (globT) to <x>; no threshold by default"
    sets_z_models: ": sets Z (# models) for E-value calculation"
    acc: ": use HMM accession numbers instead of names in output"
    compat: ": make best effort to use last version's output style"
    cpu: ": run <n> threads in parallel (if threaded)"
    cut_ga: ": use Pfam GA gathering threshold cutoffs"
    cut_nc: ": use Pfam NC noise threshold cutoffs"
    cut_tc: ": use Pfam TC trusted threshold cutoffs"
    dome: ": sets domain Eval cutoff (2nd threshold) to <x>"
    do_mt: ": sets domain T bit thresh (2nd threshold) to <x>"
    forward: ": use the full Forward() algorithm instead of Viterbi"
    in_format: ": sequence file is in format <s>"
    null_two: ": turn OFF the post hoc second null model"
    pvm: ": run on a PVM (Parallel Virtual Machine) cluster"
    xnu: ": turn ON XNU filtering of query protein sequence"
    options: ""
    hmmpfam: ""
    hmm_database: ""
    sequence_file_or_database: ""
  }
  output {
    File out_stdout = stdout()
  }
}