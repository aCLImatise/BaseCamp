version 1.0

task SegwayLayer {
  input {
    File? big_bed
    File? mnemonic_file
    Boolean? no_re_color
    String? value__tracklinesetattr
    String? option
  }
  command <<<
    segway-layer \
      ~{option} \
      ~{if defined(big_bed) then ("--bigBed " +  '"' + big_bed + '"') else ""} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{true="--no-recolor" false="" no_re_color} \
      ~{if defined(value__tracklinesetattr) then ("-s " +  '"' + value__tracklinesetattr + '"') else ""}
  >>>
  parameter_meta {
    big_bed: "specify bigBed output file"
    mnemonic_file: "specify tab-delimited input file with mnemonic replacement identifiers for segment labels"
    no_re_color: "don't recolor labels"
    value__tracklinesetattr: "VALUE, --track-line-set=ATTR VALUE set ATTR to VALUE in track line"
    option: ""
  }
}