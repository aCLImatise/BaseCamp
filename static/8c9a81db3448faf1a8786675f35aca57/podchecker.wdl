version 1.0

task Podchecker {
  input {
    Boolean? man
    Boolean? no_warnings
    File file
  }
  command <<<
    podchecker \
      ~{file} \
      ~{if (man) then "-man" else ""} \
      ~{if (no_warnings) then "-nowarnings" else ""}
  >>>
  parameter_meta {
    man: "Print the manual page and exit."
    no_warnings: "Turn on/off printing of warnings. Repeating -warnings increases\\nthe warning level, i.e. more warnings are printed. Currently\\nincreasing to level two causes flagging of unescaped \\\"<,>\\\"\\ncharacters."
    file: "The pathname of a POD file to syntax-check (defaults to standard\\ninput).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}