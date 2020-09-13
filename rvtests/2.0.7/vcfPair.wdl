version 1.0

task VcfPair {
  input {
    Boolean? people_include_id
    Boolean? people_exclude_id
  }
  command <<<
    vcfPair \
      ~{if (people_include_id) then "--peopleIncludeID" else ""} \
      ~{if (people_exclude_id) then "--peopleExcludeID" else ""}
  >>>
  parameter_meta {
    people_include_id: "[], --peopleIncludeFile []"
    people_exclude_id: "[], --peopleExcludeFile []"
  }
  output {
    File out_stdout = stdout()
  }
}