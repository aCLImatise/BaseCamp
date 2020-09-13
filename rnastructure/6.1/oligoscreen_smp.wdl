version 1.0

task Oligoscreensmp {
  input {
    Boolean? dna
    Boolean? temperature
    String oligo_screen
    File list_file
    File report_file
  }
  command <<<
    oligoscreen_smp \
      ~{oligo_screen} \
      ~{list_file} \
      ~{report_file} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (temperature) then "--temperature" else ""}
  >>>
  parameter_meta {
    dna: "This flag only matters if the input file is a sequence file and has been\\nspecified as such. Specify that the sequence is DNA, and DNA parameters are\\nto be used.\\nDefault is to use RNA parameters."
    temperature: "Specify the temperature at which calculation takes place in Kelvin.\\nDefault is 310.15 K, which is 37 degrees C.\\n"
    oligo_screen: ""
    list_file: ""
    report_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}