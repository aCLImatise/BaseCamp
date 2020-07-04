version 1.0

task SsuCmstat {
  input {
    Boolean? configure_cm_glocal
    Boolean? only_print_model
    String? set_database_size
    Boolean? all
    Boolean? le
    Boolean? ge
    String? beta
    String? qdb_file
    Boolean? options
    String cm_file
  }
  command <<<
    ssu-cmstat \
      ~{cm_file} \
      ~{true="-g" false="" configure_cm_glocal} \
      ~{true="-m" false="" only_print_model} \
      ~{if defined(set_database_size) then ("-Z " +  '"' + set_database_size + '"') else ""} \
      ~{true="--all" false="" all} \
      ~{true="--le" false="" le} \
      ~{true="--ge" false="" ge} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(qdb_file) then ("--qdbfile " +  '"' + qdb_file + '"') else ""} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    configure_cm_glocal: ": configure CM for glocal alignment [default: local]"
    only_print_model: ": only print one line summary of model statistics  [default]"
    set_database_size: ": set Z (database size in *Mb*) to <x> for E-value calculations"
    all: ": print model, E-value and filter thresholds stats"
    le: ": only print one line summary of  local E-value statistics"
    ge: ": only print one line summary of glocal E-value statistics"
    beta: ": set tail loss prob for QDB stats to <x>  [1E-7]  (0<x<1)"
    qdb_file: ": save query-dependent bands (QDBs) for each state to file <f>"
    options: ""
    cm_file: ""
  }
}