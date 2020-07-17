version 1.0

task OmeroDbScript {
  input {
    File? file
    String? patch
    String? password
    Boolean? no_salt
    String pos_version
    String pos_patch
    String pos_password
  }
  command <<<
    omero db script \
      ~{pos_version} \
      ~{pos_patch} \
      ~{pos_password} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(patch) then ("--patch " +  '"' + patch + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{true="--no-salt" false="" no_salt}
  >>>
  parameter_meta {
    file: "Optional file to save to. Use '-' for stdout."
    patch: "==SUPPRESS=="
    password: "OMERO root password"
    no_salt: "Disable the salting of passwords"
    pos_version: "==SUPPRESS=="
    pos_patch: "==SUPPRESS=="
    pos_password: "==SUPPRESS=="
  }
}