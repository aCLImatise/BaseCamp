version 1.0

task SocruUpdateProfile {
  input {
    String? output_file
    Boolean? debug
    Boolean? verbose
    String so_cru_output_filename
    String profile_filename
  }
  command <<<
    socru_update_profile \
      ~{so_cru_output_filename} \
      ~{profile_filename} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    output_file: "Output filename (default: updated_profile.txt)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
    so_cru_output_filename: "Socru output file"
    profile_filename: "profile.txt from database"
  }
}