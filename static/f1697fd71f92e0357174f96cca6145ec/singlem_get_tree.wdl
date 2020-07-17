version 1.0

task SinglemGetTree {
  input {
    Boolean? debug
    Boolean? quiet
    Boolean? full_help
    Array[String] single_m_packages
  }
  command <<<
    singlem get_tree \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--full_help" false="" full_help} \
      ~{if defined(single_m_packages) then ("--singlem_packages " +  '"' + single_m_packages + '"') else ""}
  >>>
  parameter_meta {
    debug: "output debug information"
    quiet: "only output errors"
    full_help: "display all help options"
    single_m_packages: "SingleM packages to use [default: use the default set]"
  }
}