version 1.0

task PlanemoCreateGistOPTIONSFILEPATH {
  input {
    Boolean linkLinkType
  }
  command <<<
    planemo create_gist OPTIONS FILE_PATH \
      ~{true="--link_type" false="" linkLinkType}
  >>>
}