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
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if defined(single_m_packages) then ("--singlem_packages " +  '"' + single_m_packages + '"') else ""}
  >>>
  parameter_meta {
    debug: "output debug information"
    quiet: "only output errors"
    full_help: "display all help options"
    single_m_packages: "SingleM packages to use [default: use the default set]"
  }
  output {
    File out_stdout = stdout()
  }
}