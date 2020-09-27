version 1.0

task SinglemCreate {
  input {
    File? output_single_m_package
    Boolean? debug
    Boolean? quiet
    Boolean? full_help
    Int? hmm_position
    Int? window_size
    File? force
  }
  command <<<
    singlem create \
      ~{if defined(output_single_m_package) then ("--output_singlem_package " +  '"' + output_single_m_package + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if defined(hmm_position) then ("--hmm_position " +  '"' + hmm_position + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    output_single_m_package: "PATH --hmm_position INTEGER --window_size INTEGER\\n[--force]"
    debug: "output debug information"
    quiet: "only output errors"
    full_help: "display all help options"
    hmm_position: "position in the GraftM alignment HMM where the SingleM\\nwindow starts"
    window_size: "length of residues in the window, counting only those\\nthat match the HMM"
    force: "overwrite output path if it already exists"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}