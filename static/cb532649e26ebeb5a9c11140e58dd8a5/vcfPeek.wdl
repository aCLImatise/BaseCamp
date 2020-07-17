version 1.0

task VcfPeek {
  input {
    Boolean? people_include_id
    Boolean? people_exclude_id
  }
  command <<<
    vcfPeek \
      ~{true="--peopleIncludeID" false="" people_include_id} \
      ~{true="--peopleExcludeID" false="" people_exclude_id}
  >>>
  parameter_meta {
    people_include_id: "[], --peopleIncludeFile []"
    people_exclude_id: "[], --peopleExcludeFile []"
  }
}