version 1.0

task Pswdb {
  input {
    Int? penalty_default
    Int? penatly_default
    Int? matrix_default_blosumbla
    String? abc
    Boolean? a_penalty_above_default
    Boolean? b_penalty_above_default
    Boolean? c_penalty_above_default
    String? pba
    Int? max_desc
    Int? max_aln
    Int? cut
    String? ids
    String? no_his
    Boolean? serial
    Boolean? pthread
    Int? p_thr_no
    Boolean? mpi
    Boolean? pvm
    String? db_trace
    String? s_routine
    Boolean? dy_mem
    Boolean? kbyte
    Boolean? dy_debug
    Boolean? pal_debug
    Boolean? version
    Boolean? silent
    Boolean? quiet
    String? error_off_std
    Boolean? error_log
  }
  command <<<
    pswdb \
      ~{if defined(penalty_default) then ("-g " +  '"' + penalty_default + '"') else ""} \
      ~{if defined(penatly_default) then ("-e " +  '"' + penatly_default + '"') else ""} \
      ~{if defined(matrix_default_blosumbla) then ("-m " +  '"' + matrix_default_blosumbla + '"') else ""} \
      ~{if defined(abc) then ("-abc " +  '"' + abc + '"') else ""} \
      ~{if (a_penalty_above_default) then "-a" else ""} \
      ~{if (b_penalty_above_default) then "-b" else ""} \
      ~{if (c_penalty_above_default) then "-c" else ""} \
      ~{if defined(pba) then ("-pba " +  '"' + pba + '"') else ""} \
      ~{if defined(max_desc) then ("-max_desc " +  '"' + max_desc + '"') else ""} \
      ~{if defined(max_aln) then ("-max_aln " +  '"' + max_aln + '"') else ""} \
      ~{if defined(cut) then ("-cut " +  '"' + cut + '"') else ""} \
      ~{if defined(ids) then ("-ids " +  '"' + ids + '"') else ""} \
      ~{if defined(no_his) then ("-nohis " +  '"' + no_his + '"') else ""} \
      ~{if (serial) then "-serial" else ""} \
      ~{if (pthread) then "-pthread" else ""} \
      ~{if defined(p_thr_no) then ("-pthr_no " +  '"' + p_thr_no + '"') else ""} \
      ~{if (mpi) then "-mpi" else ""} \
      ~{if (pvm) then "-pvm" else ""} \
      ~{if defined(db_trace) then ("-dbtrace " +  '"' + db_trace + '"') else ""} \
      ~{if defined(s_routine) then ("-sroutine " +  '"' + s_routine + '"') else ""} \
      ~{if (dy_mem) then "-dymem" else ""} \
      ~{if (kbyte) then "-kbyte" else ""} \
      ~{if (dy_debug) then "-dydebug" else ""} \
      ~{if (pal_debug) then "-paldebug" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(error_off_std) then ("-erroroffstd " +  '"' + error_off_std + '"') else ""} \
      ~{if (error_log) then "-errorlog" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    penalty_default: "penalty (default 12)"
    penatly_default: "penatly (default 2)"
    matrix_default_blosumbla: "matrix (default BLOSUM62.bla)"
    abc: "the abc model"
    a_penalty_above_default: "a penalty for above (default 120)"
    b_penalty_above_default: "b penalty for above (default 10)"
    c_penalty_above_default: "c penalty for above (default 3)"
    pba: "the pba model"
    max_desc: "of one line descriptions (default = 500)"
    max_aln: "of alignments to show (default = 50)"
    cut: "cutoff (score) (default = 40)"
    ids: "seq ids with alignments"
    no_his: "not fit histogram"
    serial: "use serial code (single processor)"
    pthread: "use pthread code (SMP box)"
    p_thr_no: "Number of threads to use"
    mpi: "use MPI code (distributed memory system)"
    pvm: "use parallel virtual machine search system"
    db_trace: "Trace level of the database code (for debugging only)"
    s_routine: "Search type routine [exact/kbest/forward]"
    dy_mem: "memory style [default/linear/explicit]"
    kbyte: "memory amount to use [4000]"
    dy_debug: "drop into dynamite dp matrix debugger"
    pal_debug: "print PackAln after debugger run if used"
    version: "show version and compile info"
    silent: "No messages on stderr"
    quiet: "No report on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
  }
  output {
    File out_stdout = stdout()
  }
}