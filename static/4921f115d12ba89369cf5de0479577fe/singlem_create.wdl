version 1.0

task SinglemCreate {
  input {
    Boolean? debug
    Boolean? quiet
    Boolean? full_help
    File? input_graft_m_package
    File? output_single_m_package
    Int? hmm_position
    Int? window_size
    File? force
  }
  command <<<
    singlem create \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if defined(input_graft_m_package) then ("--input_graftm_package " +  '"' + input_graft_m_package + '"') else ""} \
      ~{if defined(output_single_m_package) then ("--output_singlem_package " +  '"' + output_single_m_package + '"') else ""} \
      ~{if defined(hmm_position) then ("--hmm_position " +  '"' + hmm_position + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "output debug information"
    quiet: "only output errors"
    full_help: "display all help options"
    input_graft_m_package: "input package"
    output_single_m_package: "output package"
    hmm_position: "position in the GraftM alignment HMM where the SingleM\\nwindow starts"
    window_size: "length of residues in the window, counting only those\\nthat match the HMM"
    force: "overwrite output path if it already exists"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}