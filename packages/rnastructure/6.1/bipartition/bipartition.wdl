version 1.0

task Bipartition {
  input {
    Boolean? dna
    Boolean? temperature
  }
  command <<<
    bipartition \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (temperature) then "--temperature" else ""}
  >>>
  parameter_meta {
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used.\\nDefault is to use RNA parameters."
    temperature: "Specify the temperature at which calculation takes place in Kelvin.\\nDefault is 310.15 K, which is 37 degrees C.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}