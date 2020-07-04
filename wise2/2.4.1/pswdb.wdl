version 1.0

task Pswdb {
  input {
    String? penalty_default
    String? penatly_default
    String? matrix_default_blosumbla
    String? abc
    Boolean? a_penalty_above_default
    Boolean? b_penalty_above_default
    Boolean? c_penalty_above_default
    String? pba
    String? max_desc
    String? max_aln
    String? cut
    String? ids
    String? no_his
    Boolean? serial
    Boolean? pthread
    String? p_thr_no
    Boolean? mpi
    Boolean? pvm
    String? db_trace
    String? s_routine
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
      ~{true="-a" false="" a_penalty_above_default} \
      ~{true="-b" false="" b_penalty_above_default} \
      ~{true="-c" false="" c_penalty_above_default} \
      ~{if defined(pba) then ("-pba " +  '"' + pba + '"') else ""} \
      ~{if defined(max_desc) then ("-max_desc " +  '"' + max_desc + '"') else ""} \
      ~{if defined(max_aln) then ("-max_aln " +  '"' + max_aln + '"') else ""} \
      ~{if defined(cut) then ("-cut " +  '"' + cut + '"') else ""} \
      ~{if defined(ids) then ("-ids " +  '"' + ids + '"') else ""} \
      ~{if defined(no_his) then ("-nohis " +  '"' + no_his + '"') else ""} \
      ~{true="-serial" false="" serial} \
      ~{true="-pthread" false="" pthread} \
      ~{if defined(p_thr_no) then ("-pthr_no " +  '"' + p_thr_no + '"') else ""} \
      ~{true="-mpi" false="" mpi} \
      ~{true="-pvm" false="" pvm} \
      ~{if defined(db_trace) then ("-dbtrace " +  '"' + db_trace + '"') else ""} \
      ~{if defined(s_routine) then ("-sroutine " +  '"' + s_routine + '"') else ""} \
      ~{true="-dydebug" false="" dy_debug} \
      ~{true="-paldebug" false="" pal_debug} \
      ~{true="-version" false="" version} \
      ~{true="-silent" false="" silent} \
      ~{true="-quiet" false="" quiet} \
      ~{if defined(error_off_std) then ("-erroroffstd " +  '"' + error_off_std + '"') else ""} \
      ~{true="-errorlog" false="" error_log}
  >>>
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
    dy_debug: "drop into dynamite dp matrix debugger"
    pal_debug: "print PackAln after debugger run if used"
    version: "show version and compile info"
    silent: "No messages on stderr"
    quiet: "No report on stderr"
    error_off_std: "warning messages to stderr"
    error_log: "[file] Log warning messages to file"
  }
}