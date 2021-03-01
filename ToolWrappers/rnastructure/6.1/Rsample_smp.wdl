version 1.0

task Rsamplesmp {
  input {
    Boolean? dna
    Boolean? c_param
    Boolean? max_distance
    Boolean? num_samples
    Boolean? offset
    Boolean? react_paired_end
    Boolean? react_paired_middle
    Boolean? react_unpaired
    Boolean? seed
    Boolean? temperature
    String r_sample
    File seq_file
    File shape_file
    File pfs_file
  }
  command <<<
    Rsample_smp \
      ~{r_sample} \
      ~{seq_file} \
      ~{shape_file} \
      ~{pfs_file} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (c_param) then "--cparam" else ""} \
      ~{if (max_distance) then "--maxdistance" else ""} \
      ~{if (num_samples) then "--numsamples" else ""} \
      ~{if (offset) then "--offset" else ""} \
      ~{if (react_paired_end) then "--reactPairedEnd" else ""} \
      ~{if (react_paired_middle) then "--reactPairedMiddle" else ""} \
      ~{if (react_unpaired) then "--reactUnpaired" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (temperature) then "--temperature" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used.\\nDefault is to use RNA parameters."
    c_param: "Specify a C parameter used in Rsample calculations.\\nDefault is 0.5 kcal/mol."
    max_distance: "Specify a maximum pairing distance between nucleotides.\\nDefault is no restriction on distance between pairs."
    num_samples: "Specify number of samples for stochastic sampling calculation used in\\nRsample.\\nDefault is 10,000."
    offset: "Specify an Offset parameter used in Rsample calculations.\\nDefault is 1.1 kcal/mol."
    react_paired_end: "Give full path to file with end-of-helix paired nucleotide reactivities\\ndataset.\\nDefault values are in rsample directory in $DATAPATH."
    react_paired_middle: "Give full path to file with middle-of-helix paired nucleotide reactivities\\ndataset.\\nDefault values are in rsample directory in $DATAPATH"
    react_unpaired: "Give full path to file with unpaired nucleotide reactivities dataset.\\nDefault values are in rsample directory in $DATAPATH"
    seed: "Specify a random seed.\\nDefault is to set random seed from current time."
    temperature: "Specify the temperature at which calculation takes place in Kelvin.\\nDefault is 310.15 K, which is 37 degrees C.\\n"
    r_sample: ""
    seq_file: ""
    shape_file: ""
    pfs_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}