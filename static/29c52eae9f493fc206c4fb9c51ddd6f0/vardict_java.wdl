version 1.0

task VardictJava {
  input {
    String? down_sample
    String? indicate_coordinates_zerobased
    String? n
    String? b
    String? c
    String? var_5
    String? var_6
    String? var_7
    String? var_8
    String var_dict
  }
  command <<<
    vardict-java \
      ~{var_dict} \
      ~{if defined(down_sample) then ("--downsample " +  '"' + down_sample + '"') else ""} \
      ~{if defined(indicate_coordinates_zerobased) then ("-z " +  '"' + indicate_coordinates_zerobased + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(var_5) then ("-S " +  '"' + var_5 + '"') else ""} \
      ~{if defined(var_6) then ("-E " +  '"' + var_6 + '"') else ""} \
      ~{if defined(var_7) then ("-s " +  '"' + var_7 + '"') else ""} \
      ~{if defined(var_8) then ("-e " +  '"' + var_8 + '"') else ""}
  >>>
  parameter_meta {
    down_sample: "For downsampling fraction.  e.g. 0.7 means roughly 70% downsampling.  Default: No downsampling.  Use with caution.  The downsampling will be random and non-reproducible."
    indicate_coordinates_zerobased: "Indicate whether coordinates are zero-based, as IGV uses.  Default: 1 for BED file or amplicon BED file. Use 0 to turn it off. When using the -R option, it's set to 0"
    n: ""
    b: ""
    c: ""
    var_5: ""
    var_6: ""
    var_7: ""
    var_8: ""
    var_dict: ""
  }
}