version 1.0

task Segwaylayer {
  input {
    File? big_bed
    File? mnemonic_file
    Boolean? no_re_color
    String? value__tracklinesetattr
  }
  command <<<
    segway_layer \
      ~{if defined(big_bed) then ("--bigBed " +  '"' + big_bed + '"') else ""} \
      ~{if defined(mnemonic_file) then ("--mnemonic-file " +  '"' + mnemonic_file + '"') else ""} \
      ~{if (no_re_color) then "--no-recolor" else ""} \
      ~{if defined(value__tracklinesetattr) then ("-s " +  '"' + value__tracklinesetattr + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    big_bed: "specify bigBed output file"
    mnemonic_file: "specify tab-delimited input file with mnemonic\\nreplacement identifiers for segment labels"
    no_re_color: "don't recolor labels"
    value__tracklinesetattr: "VALUE, --track-line-set=ATTR VALUE\\nset ATTR to VALUE in track line\\n"
  }
  output {
    File out_stdout = stdout()
    File out_big_bed = "${in_big_bed}"
  }
}