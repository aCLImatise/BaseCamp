version 1.0

task TraitarRemove {
  input {
    Boolean? keep
  }
  command <<<
    traitar remove \
      ~{if (keep) then "--keep" else ""}
  >>>
  parameter_meta {
    keep: "instead of remove the given phenotypes, keep them and forget the\\nrest\\n"
  }
  output {
    File out_stdout = stdout()
  }
}