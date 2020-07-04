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
    Boolean? force
  }
  command <<<
    singlem create \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--full_help" false="" full_help} \
      ~{if defined(input_graft_m_package) then ("--input_graftm_package " +  '"' + input_graft_m_package + '"') else ""} \
      ~{if defined(output_single_m_package) then ("--output_singlem_package " +  '"' + output_single_m_package + '"') else ""} \
      ~{if defined(hmm_position) then ("--hmm_position " +  '"' + hmm_position + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    debug: "output debug information"
    quiet: "only output errors"
    full_help: "display all help options"
    input_graft_m_package: "input package"
    output_single_m_package: "output package"
    hmm_position: "position in the GraftM alignment HMM where the SingleM window starts"
    window_size: "length of residues in the window, counting only those that match the HMM"
    force: "overwrite output path if it already exists"
  }
}