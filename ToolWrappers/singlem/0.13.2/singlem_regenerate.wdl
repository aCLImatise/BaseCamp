version 1.0

task SinglemRegenerate {
  input {
    Boolean? debug
    Boolean? quiet
    Boolean? full_help
    File? input_single_m_package
    File? output_single_m_package
    String intermediate_archaea_graft_m_package
    String intermediate_bacteria_graft_m_package
  }
  command <<<
    singlem regenerate \
      ~{intermediate_archaea_graft_m_package} \
      ~{intermediate_bacteria_graft_m_package} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if defined(input_single_m_package) then ("--input_singlem_package " +  '"' + input_single_m_package + '"') else ""} \
      ~{if defined(output_single_m_package) then ("--output_singlem_package " +  '"' + output_single_m_package + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "output debug information"
    quiet: "only output errors"
    full_help: "display all help options"
    input_single_m_package: "input package"
    output_single_m_package: "output package"
    intermediate_archaea_graft_m_package: "--intermediate_bacteria_graftm_package"
    intermediate_bacteria_graft_m_package: "--input_taxonomy INPUT_TAXONOMY"
  }
  output {
    File out_stdout = stdout()
  }
}