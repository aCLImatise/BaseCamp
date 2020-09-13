version 1.0

task Bifold {
  input {
    Boolean? dna
    Boolean? intramolecular
    Boolean? loop
    Boolean? maximum
    Boolean? percent
    Boolean? save
    Boolean? temperature
    Boolean? window
    File seq_file_one
    File seq_file_two
    File ct_file
  }
  command <<<
    bifold \
      ~{seq_file_one} \
      ~{seq_file_two} \
      ~{ct_file} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (intramolecular) then "--intramolecular" else ""} \
      ~{if (loop) then "--loop" else ""} \
      ~{if (maximum) then "--maximum" else ""} \
      ~{if (percent) then "--percent" else ""} \
      ~{if (save) then "--save" else ""} \
      ~{if (temperature) then "--temperature" else ""} \
      ~{if (window) then "--window" else ""}
  >>>
  parameter_meta {
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used.\\nDefault is to use RNA parameters."
    intramolecular: "Forbid intramolecular pairs (pairs within the same strand).\\nDefault is to allow intramolecular pairs."
    loop: "Specify a maximum internal/bulge loop size.\\nDefault is 30 unpaired numcleotides."
    maximum: "Specify a maximum number of structures.\\nDefault is 20 structures."
    percent: "Specify a maximum percent energy difference.\\nDefault is 10 percent (specified as 10, not 0.1)."
    save: "Specify the name of a save file, needed for dotplots and refolding.\\nDefault is not to generate a save file."
    temperature: "Specify the temperature at which calculation takes place in Kelvin.\\nDefault is 310.15 K, which is 37 degrees C."
    window: "Specify a window size.\\nDefault is 0 nucleotides.\\n"
    seq_file_one: ""
    seq_file_two: ""
    ct_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}