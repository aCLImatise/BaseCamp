version 1.0

task Lav2plt.pl {
  input {
    String helpHelp
    Boolean bB
    Boolean zZ
    String devDev
    Boolean xXA
  }
  command <<<
    lav2plt.pl \
      ~{if defined(helpHelp) then ("--help " +  '"' + helpHelp + '"') else ""} \
      ~{true="-B" false="" bB} \
      ~{true="-Z" false="" zZ} \
      ~{if defined(devDev) then ("--dev " +  '"' + devDev + '"') else ""} \
      ~{true="--xA" false="" xXA}
  >>>
}