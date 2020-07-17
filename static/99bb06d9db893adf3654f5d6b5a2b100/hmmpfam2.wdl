version 1.0

task Hmmpfam2 {
  input {
    Boolean? nucleic_acid_modelssequence
    String? sets_alignment_limit
    String? sets_cutoff_globe
    String? sets_bit_threshold
    String? sets_z_models
    Boolean? acc
    Boolean? compat
    String? cpu
    Boolean? cut_ga
    Boolean? cut_nc
    Boolean? cut_tc
    String? dome
    String? do_mt
    Boolean? forward
    String? in_format
    Boolean? null_two
    Boolean? pvm
    Boolean? xnu
    Boolean? options
    String hmmpfam
    String hmm_database
    String sequence_file_or_database
  }
  command <<<
    hmmpfam2 \
      ~{hmmpfam} \
      ~{hmm_database} \
      ~{sequence_file_or_database} \
      ~{true="-n" false="" nucleic_acid_modelssequence} \
      ~{if defined(sets_alignment_limit) then ("-A " +  '"' + sets_alignment_limit + '"') else ""} \
      ~{if defined(sets_cutoff_globe) then ("-E " +  '"' + sets_cutoff_globe + '"') else ""} \
      ~{if defined(sets_bit_threshold) then ("-T " +  '"' + sets_bit_threshold + '"') else ""} \
      ~{if defined(sets_z_models) then ("-Z " +  '"' + sets_z_models + '"') else ""} \
      ~{true="--acc" false="" acc} \
      ~{true="--compat" false="" compat} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{true="--cut_ga" false="" cut_ga} \
      ~{true="--cut_nc" false="" cut_nc} \
      ~{true="--cut_tc" false="" cut_tc} \
      ~{if defined(dome) then ("--domE " +  '"' + dome + '"') else ""} \
      ~{if defined(do_mt) then ("--domT " +  '"' + do_mt + '"') else ""} \
      ~{true="--forward" false="" forward} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--null2" false="" null_two} \
      ~{true="--pvm" false="" pvm} \
      ~{true="--xnu" false="" xnu} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    nucleic_acid_modelssequence: ": nucleic acid models/sequence (default protein)"
    sets_alignment_limit: ": sets alignment output limit to <n> best domain alignments"
    sets_cutoff_globe: ": sets E value cutoff (globE) to <x>; default 10"
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
}