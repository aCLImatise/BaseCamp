version 1.0

task GappaToolsCitation {
  input {
    String formatFormat
    Boolean allAll
    Boolean listList
    String? optionsOptions
    String? keysKeys
  }
  command <<<
    gappa tools citation \
      ~{optionsOptions} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--all" false="" allAll} \
      ~{true="--list" false="" listList} \
      ~{keysKeys}
  >>>
}