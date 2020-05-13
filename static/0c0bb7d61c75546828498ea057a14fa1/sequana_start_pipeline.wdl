version 1.0

task SequanaStartPipeline {
  input {
    Boolean forceForce
    String nameName
    String keywordsKeywords
    String descriptionDescription
  }
  command <<<
    sequana_start_pipeline \
      ~{true="--force" false="" forceForce} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(keywordsKeywords) then ("--keywords " +  '"' + keywordsKeywords + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""}
  >>>
}