version 1.0

task Expand {
  input {
    Boolean initialInitial
    String tabsTabs
    String tabsTabs
  }
  command <<<
    expand \
      ~{true="--initial" false="" initialInitial} \
      ~{if defined(tabsTabs) then ("--tabs " +  '"' + tabsTabs + '"') else ""} \
      ~{if defined(tabsTabs) then ("--tabs " +  '"' + tabsTabs + '"') else ""}
  >>>
}