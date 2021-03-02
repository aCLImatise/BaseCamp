version 1.0

task Hmmsearch2 {
  input {
    String? sets_alignment_limit
    String? sets_value_globe
    String? sets_bit_threshold
    String? sets_z_seqs
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
    String hmm_search
    String hmm_file
    File sequence_file_or_database
  }
  command <<<
    hmmsearch2 \
      ~{hmm_search} \
      ~{hmm_file} \
      ~{sequence_file_or_database} \
      ~{if defined(sets_alignment_limit) then ("-A " +  '"' + sets_alignment_limit + '"') else ""} \
      ~{if defined(sets_value_globe) then ("-E " +  '"' + sets_value_globe + '"') else ""} \
      ~{if defined(sets_bit_threshold) then ("-T " +  '"' + sets_bit_threshold + '"') else ""} \
      ~{if defined(sets_z_seqs) then ("-Z " +  '"' + sets_z_seqs + '"') else ""} \
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
    sets_alignment_limit: ": sets alignment output limit to <n> best domain alignments"
    sets_value_globe: ": sets E value cutoff (globE) to <= x"
    sets_bit_threshold: ": sets T bit threshold (globT) to >= x"
    sets_z_seqs: ": sets Z (# seqs) for E-value calculation"
    compat: ": make best effort to use last version's output style"
    cpu: ": run <n> threads in parallel (if threaded)"
    cut_ga: ": use Pfam GA gathering threshold cutoffs"
    cut_nc: ": use Pfam NC noise threshold cutoffs"
    cut_tc: ": use Pfam TC trusted threshold cutoffs"
    dome: ": sets domain Eval cutoff (2nd threshold) to <= x"
    do_mt: ": sets domain T bit thresh (2nd threshold) to >= x"
    forward: ": use the full Forward() algorithm instead of Viterbi"
    in_format: ": sequence file is in format <s>"
    null_two: ": turn OFF the post hoc second null model"
    pvm: ": run on a Parallel Virtual Machine (PVM)"
    xnu: ": turn ON XNU filtering of target protein sequences"
    options: ""
    hmm_search: ""
    hmm_file: ""
    sequence_file_or_database: ""
  }
  output {
    File out_stdout = stdout()
  }
}