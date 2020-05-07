version 1.0

task SequanaTaxonomy {
  input {
    Boolean databasesDatabases
    Boolean showShowHtml
  }
  command <<<
    sequana_taxonomy \
      ~{true="--databases" false="" databasesDatabases} \
      ~{true="--show-html" false="" showShowHtml}
  >>>
}