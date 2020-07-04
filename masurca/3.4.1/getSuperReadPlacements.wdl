version 1.0

task GetSuperReadPlacements.perl {
  input {
    String? dir
    Boolean? mina_stat
    Boolean? min_from_end
    Boolean? shortest_unit_ig_length
    Boolean? super_readdir
    Boolean? ca_dir
    String? help
  }
  command <<<
    getSuperReadPlacements.perl \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""} \
      ~{true="-minAStat" false="" mina_stat} \
      ~{true="-minFromEnd" false="" min_from_end} \
      ~{true="-shortestUnitigLength" false="" shortest_unit_ig_length} \
      ~{true="-superReadDir" false="" super_readdir} \
      ~{true="-CADir" false="" ca_dir} \
      ~{if defined(help) then ("-h " +  '"' + help + '"') else ""}
  >>>
  parameter_meta {
    dir: "input directory"
    mina_stat: "(default = 5)"
    min_from_end: "(default = 200) (to avoid edge effects)"
    shortest_unit_ig_length: "(default = 2000)"
    super_readdir: "(defaults to $dir/work1)"
    ca_dir: "(defaults to $dir/CA)"
    help: "help"
  }
}