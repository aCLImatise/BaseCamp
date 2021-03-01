version 1.0

task Eel {
  input {
    String var_0
    String var_1
    String var_2
    String var_3
    String var_4
    String var_5
    File filename
    String gap_limit
    String var_8
    String buffer
    String var_10
    String var_11
    String var_12
    String var_13
    String var_14
    String var_15
    String var_16
    String var_17
    String var_18
    String var_19
    String var_20
    String var_21
    String var_22
    String var_23
    String var_24
    String var_25
    String var_26
    String var_27
    String var_28
    String var_29
    String var_30
    String var_31
    String var_32
    String pw_files
  }
  command <<<
    eel \
      ~{var_0} \
      ~{var_1} \
      ~{var_2} \
      ~{var_3} \
      ~{var_4} \
      ~{var_5} \
      ~{filename} \
      ~{gap_limit} \
      ~{var_8} \
      ~{buffer} \
      ~{var_10} \
      ~{var_11} \
      ~{var_12} \
      ~{var_13} \
      ~{var_14} \
      ~{var_15} \
      ~{var_16} \
      ~{var_17} \
      ~{var_18} \
      ~{var_19} \
      ~{var_20} \
      ~{var_21} \
      ~{var_22} \
      ~{var_23} \
      ~{var_24} \
      ~{var_25} \
      ~{var_26} \
      ~{var_27} \
      ~{var_28} \
      ~{var_29} \
      ~{var_30} \
      ~{var_31} \
      ~{var_32} \
      ~{pw_files}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_0: "specifies how many alignments you want. (Default 3)"
    var_1: "Bonus factor for hit (Default 2)"
    var_2: "Penalty factor for rotation (Default 1.0)"
    var_3: "Penalty factor for average distance between sites (Default 0.5)"
    var_4: "Penalty factor for distance difference between sites (Default 1.0)"
    var_5: "specifies how many nucletides there are per rotation. (Default 10.4)"
    filename: "specifies a file in gff format is you want to be aligned"
    gap_limit: "specifies how many sequences can have gaps at the same point (Default 0)"
    var_8: "specifies how many alignments you want. (Default 1)"
    buffer: "Specifies the size of buffer to be added to the found areas before multiple aligning in nukleotides (Default 1000)"
    var_10: "Bonus factor for hit (Default 2)"
    var_11: "Penalty factor for rotation (Default 1.0)"
    var_12: "Penalty factor for average distance between sites (Default 0.5)"
    var_13: "Penalty factor for distance difference between sites (Default 1.0)"
    var_14: "Specifies how many nucletides there are per rotation. (Default 10.4)"
    var_15: "specifies how many alignments you want. (Default 3)"
    var_16: "Bonus factor for hit (Default 2)"
    var_17: "Penalty factor for rotation (Default 1.0)"
    var_18: "Penalty factor for average distance between sites (Default 0.5)"
    var_19: "Penalty factor for distance difference between sites (Default 1.0)"
    var_20: "specifies how many nucletides there are per rotation. (Default 10.4)"
    var_21: "specifies how many alignments you want. (Default 3)"
    var_22: "Bonus factor for hit (Default 2)"
    var_23: "Penalty factor for rotation (Default 1.0)"
    var_24: "Penalty factor for average distance between sites (Default 0.5)"
    var_25: "Penalty factor for distance difference between sites (Default 1.0)"
    var_26: "Specifies how many nucletides there are per rotation. (Default 10.4)"
    var_27: "specifies how many alignments you want. (Default 3)"
    var_28: "Bonus factor for hit (Default 2)"
    var_29: "Penalty factor for rotation (Default 1.0)"
    var_30: "Penalty factor for average distance between sites (Default 0.5)"
    var_31: "Penalty factor for distance difference between sites (Default 1.0)"
    var_32: "Specifies how many nucletides there are per rotation. (Default 10.4)"
    pw_files: "If the needed pairwise alignments are calculated beforehand, the path to the directory they are in."
  }
  output {
    File out_stdout = stdout()
  }
}