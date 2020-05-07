version 1.0

task PslCheck {
  input {
    String quietQuiet
  }
  command <<<
    pslCheck \
      ~{if defined(quietQuiet) then ("-quiet " +  '"' + quietQuiet + '"') else ""}
  >>>
}