version 1.0

task Getsize {
  input {
    Boolean? codons
    Boolean? x
    Boolean? nd
    Boolean? l
    Boolean? ft
    Boolean? f
    File? alph
    Boolean? prot
    Boolean? var_8
    Boolean? var_9
    String measure
    String data_file
    String do
    String just
    String print
    String translate
    String use
    String var_17
    String var_18
    File var_file
    String frame
    String letter
    String not
    String protein
    String statistics
    String the
    String containing
    String frequencies
    String specified
    String a
    String var_as
    Int length
    String sequences
    String six
    String warnings
    String c
    String about
    String b_file
    Int frame_zero
    String frames
    String in
    String latex
    String of
    String fast_a
    String and
    String codon
    String duplicate
    String each
    String usage
    String freqs
  }
  command <<<
    getsize \
      ~{measure} \
      ~{data_file} \
      ~{do} \
      ~{just} \
      ~{print} \
      ~{translate} \
      ~{use} \
      ~{var_17} \
      ~{var_18} \
      ~{var_file} \
      ~{frame} \
      ~{letter} \
      ~{not} \
      ~{protein} \
      ~{statistics} \
      ~{the} \
      ~{containing} \
      ~{frequencies} \
      ~{specified} \
      ~{a} \
      ~{var_as} \
      ~{length} \
      ~{sequences} \
      ~{six} \
      ~{warnings} \
      ~{c} \
      ~{about} \
      ~{b_file} \
      ~{frame_zero} \
      ~{frames} \
      ~{in} \
      ~{latex} \
      ~{of} \
      ~{fast_a} \
      ~{and} \
      ~{codon} \
      ~{duplicate} \
      ~{each} \
      ~{usage} \
      ~{freqs} \
      ~{if (codons) then "-codons" else ""} \
      ~{if (x) then "-x" else ""} \
      ~{if (nd) then "-nd" else ""} \
      ~{if (l) then "-l" else ""} \
      ~{if (ft) then "-ft" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if (prot) then "-prot" else ""} \
      ~{if (var_8) then "-rna" else ""} \
      ~{if (var_9) then "-dna" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    codons: ""
    x: ""
    nd: ""
    l: ""
    ft: ""
    f: ""
    alph: ""
    prot: ""
    var_8: ""
    var_9: ""
    measure: ""
    data_file: ""
    do: ""
    just: ""
    print: ""
    translate: ""
    use: ""
    var_17: ""
    var_18: ""
    var_file: ""
    frame: ""
    letter: ""
    not: ""
    protein: ""
    statistics: ""
    the: ""
    containing: ""
    frequencies: ""
    specified: ""
    a: ""
    var_as: ""
    length: ""
    sequences: ""
    six: ""
    warnings: ""
    c: ""
    about: ""
    b_file: ""
    frame_zero: ""
    frames: ""
    in: ""
    latex: ""
    of: ""
    fast_a: ""
    and: ""
    codon: ""
    duplicate: ""
    each: ""
    usage: ""
    freqs: ""
  }
  output {
    File out_stdout = stdout()
  }
}