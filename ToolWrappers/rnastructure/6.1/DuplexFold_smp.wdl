version 1.0

task DuplexFoldsmp {
  input {
    Boolean? dna
    Boolean? loop
    Boolean? maximum
    Boolean? percent
    Boolean? temperature
    Boolean? window
    String duplex_fold
    File seq_file_one
    File seq_file_two
    File ct_file
  }
  command <<<
    DuplexFold_smp \
      ~{duplex_fold} \
      ~{seq_file_one} \
      ~{seq_file_two} \
      ~{ct_file} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (loop) then "--loop" else ""} \
      ~{if (maximum) then "--maximum" else ""} \
      ~{if (percent) then "--percent" else ""} \
      ~{if (temperature) then "--temperature" else ""} \
      ~{if (window) then "--window" else ""}
  >>>
  parameter_meta {
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used.\\nDefault is to use RNA parameters."
    loop: "Specify a maximum internal/bulge loop size.\\nDefault is 6 unpaired numcleotides."
    maximum: "Specify a maximum number of structures.\\nDefault is 10 structures."
    percent: "Specify a maximum percent energy difference.\\nDefault is 40 percent (specified as 40, not 0.4)."
    temperature: "Specify the temperature at which calculation takes place in Kelvin.\\nDefault is 310.15 K, which is 37 degrees C."
    window: "Specify a window size.\\nDefault is 0 nucleotides.\\n"
    duplex_fold: ""
    seq_file_one: ""
    seq_file_two: ""
    ct_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}