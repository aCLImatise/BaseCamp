version 1.0

task AllSub {
  input {
    Boolean? dna
    Boolean? absolute
    Boolean? constraint
    Boolean? percent
    Boolean? temperature
    File seq_file
    File ct_file
  }
  command <<<
    AllSub \
      ~{seq_file} \
      ~{ct_file} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (absolute) then "--absolute" else ""} \
      ~{if (constraint) then "--constraint" else ""} \
      ~{if (percent) then "--percent" else ""} \
      ~{if (temperature) then "--temperature" else ""}
  >>>
  parameter_meta {
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used.\\nDefault is to use RNA parameters."
    absolute: "Specify a maximum absolute energy difference.\\nDefault is determined by the length of the sequence."
    constraint: "Specify a constraints file to be applied.\\nDefault is to have no constraints applied."
    percent: "Specify a maximum percent energy difference.\\nDefault is determined by the length of the sequence."
    temperature: "Specify the temperature at which calculation takes place in Kelvin.\\nDefault is 310.15 K, which is 37 degrees C.\\n"
    seq_file: ""
    ct_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}