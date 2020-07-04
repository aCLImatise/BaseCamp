version 1.0

task ArticExtract {
  input {
    Boolean? quiet
    String? base_caller
    Directory directory
  }
  command <<<
    artic extract \
      ~{directory} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(base_caller) then ("--basecaller " +  '"' + base_caller + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    base_caller: "The name of the basecaller"
    directory: "The name of the database."
  }
}