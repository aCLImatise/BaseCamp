version 1.0

task Discretemi {
  input {
    File? input_pfile
    Int? ni_one
    Int? nf_one
    Int? iron_e
    Float? fr_one
    Boolean? fmt_one
    Int? ir_two
    Float? fr_two
    Boolean? fmt_two
    Boolean? i_swap_one
    Boolean? i_swap_two
    Boolean? l_swap
    Boolean? lab_fmt
    Boolean? print_binary_ints
    Boolean? ns
    String options
  }
  command <<<
    discrete_mi \
      ~{options} \
      ~{if defined(input_pfile) then ("-i " +  '"' + input_pfile + '"') else ""} \
      ~{if defined(ni_one) then ("-ni1 " +  '"' + ni_one + '"') else ""} \
      ~{if defined(nf_one) then ("-nf1 " +  '"' + nf_one + '"') else ""} \
      ~{if defined(iron_e) then ("-ir1 " +  '"' + iron_e + '"') else ""} \
      ~{if defined(fr_one) then ("-fr1 " +  '"' + fr_one + '"') else ""} \
      ~{if (fmt_one) then "-fmt1" else ""} \
      ~{if defined(ir_two) then ("-ir2 " +  '"' + ir_two + '"') else ""} \
      ~{if defined(fr_two) then ("-fr2 " +  '"' + fr_two + '"') else ""} \
      ~{if (fmt_two) then "-fmt2" else ""} \
      ~{if (i_swap_one) then "-iswap1" else ""} \
      ~{if (i_swap_two) then "-iswap2" else ""} \
      ~{if (l_swap) then "-lswap" else ""} \
      ~{if (lab_fmt) then "-labfmt" else ""} \
      ~{if (print_binary_ints) then "-b" else ""} \
      ~{if (ns) then "-ns" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_pfile: "input pfile"
    ni_one: "for file 1"
    nf_one: "for file 1"
    iron_e: "for file 1"
    fr_one: "for file 1"
    fmt_one: "<format(htk,bin,asc,pfile)> for file 1"
    ir_two: "for file 2"
    fr_two: "for file 2"
    fmt_two: "<format(htk,bin,asc,pfile)> for file 2"
    i_swap_one: "byte-swap input file 1"
    i_swap_two: "byte-swap input file 2"
    l_swap: "byte-swap label file"
    lab_fmt: "<format(htk,bin,asc,pfile)> for the label file"
    print_binary_ints: "print raw binary data (ints and floats)"
    ns: "Don't print the frame IDs (i.e., sent and frame #)"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}