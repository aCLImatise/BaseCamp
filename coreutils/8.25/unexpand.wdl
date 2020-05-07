version 1.0

task Unexpand {
  input {
    Boolean allAll
    Boolean firstFirstOnly
    String tabsTabs
    String tabsTabs
  }
  command <<<
    unexpand \
      ~{true="--all" false="" allAll} \
      ~{true="--first-only" false="" firstFirstOnly} \
      ~{if defined(tabsTabs) then ("--tabs " +  '"' + tabsTabs + '"') else ""} \
      ~{if defined(tabsTabs) then ("--tabs " +  '"' + tabsTabs + '"') else ""}
  >>>
}