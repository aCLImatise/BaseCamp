version 1.0

task Golf {
  input {
    Boolean? trace
    Boolean? int_default_number_weeks
    Boolean? int_default_number_groups
    Boolean? int_default_number_players
  }
  command <<<
    golf \
      ~{true="-trace" false="" trace} \
      ~{true="-w" false="" int_default_number_weeks} \
      ~{true="-g" false="" int_default_number_groups} \
      ~{true="-s" false="" int_default_number_players}
  >>>
  parameter_meta {
    trace: "(init,prune,fix,fail,done,propagate,commit,none,all,variable,general) default: none trace flags (comma-separated list)"
    int_default_number_weeks: "(int) default: 9 number of weeks"
    int_default_number_groups: "(int) default: 8 number of groups"
    int_default_number_players: "(int) default: 4 number of players per group"
  }
}