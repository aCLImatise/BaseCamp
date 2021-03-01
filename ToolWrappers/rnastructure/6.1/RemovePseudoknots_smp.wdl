version 1.0

task RemovePseudoknotssmp {
  input {
    Boolean? dna
    Boolean? bracket
    Boolean? maximize
    Boolean? me_a
    File? quiet
    Boolean? temperature
    String remove_pseudo_knots
    File input_ct_file
    File output_ct_file
  }
  command <<<
    RemovePseudoknots_smp \
      ~{remove_pseudo_knots} \
      ~{input_ct_file} \
      ~{output_ct_file} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (bracket) then "--bracket" else ""} \
      ~{if (maximize) then "--maximize" else ""} \
      ~{if (me_a) then "--MEA" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (temperature) then "--temperature" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used.\\nDefault is to use RNA parameters."
    bracket: "Write the output as a dot-bracket file instead of a CT file. (Note that the\\ninput file can be either a CT or bracket file, regardless of this option.)"
    maximize: "Specify that the NUMBER of remaining base pairs should be maximized in the\\npseudoknot-free structure in an energy-agnostic way -- i.e. with no regard\\nfor the folding free energy of the structure.\\nThis is usually much faster than the default behavior, which is to break\\nbase-pairs such that the final structure(s) have minimum free energy.\\nThe default method often maximizes the number of remaining base pairs, but\\nnot always."
    me_a: "Use the MaxExpect method (MEAFill) to break pseudoknots. This should\\nproduce identical results as the 'maximize' option (-m), but will be slower\\n(for testing only)."
    quiet: "Suppress unnecessary output. This option is implied when the output file is\\n'-' (STDOUT)."
    temperature: "Specify the temperature at which calculation takes place in Kelvin.\\nDefault is 310.15 K, which is 37 degrees C.\\n"
    remove_pseudo_knots: ""
    input_ct_file: ""
    output_ct_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_quiet = "${in_quiet}"
    File out_output_ct_file = "${in_output_ct_file}"
  }
}