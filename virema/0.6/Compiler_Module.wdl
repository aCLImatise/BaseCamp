version 1.0

task CompilerModule.py {
  input {
    String? output_tag
    Boolean? ded_up
    Boolean? read_names_entry
    String? de_fuzz
    Int? max_fuzz
    String? micro_in_del_length
    String? compound_handling
    String? output_dir
    Boolean? bed
    String input_data
  }
  command <<<
    Compiler_Module.py \
      ~{input_data} \
      ~{if defined(output_tag) then ("--Output_Tag " +  '"' + output_tag + '"') else ""} \
      ~{true="-DeDup" false="" ded_up} \
      ~{true="-ReadNamesEntry" false="" read_names_entry} \
      ~{if defined(de_fuzz) then ("--Defuzz " +  '"' + de_fuzz + '"') else ""} \
      ~{if defined(max_fuzz) then ("--MaxFuzz " +  '"' + max_fuzz + '"') else ""} \
      ~{if defined(micro_in_del_length) then ("--MicroInDel_Length " +  '"' + micro_in_del_length + '"') else ""} \
      ~{if defined(compound_handling) then ("--Compound_Handling " +  '"' + compound_handling + '"') else ""} \
      ~{if defined(output_dir) then ("--Output_Dir " +  '"' + output_dir + '"') else ""} \
      ~{true="-BED" false="" bed}
  >>>
  parameter_meta {
    output_tag: "Enter a tag name that will be appended to end of each output file."
    ded_up: "Remove potential PCR duplicates. Default is off."
    read_names_entry: "Append Read Names contributing to each compiled result. Default is off."
    de_fuzz: "Choose how to defuzz data: '5' to report at 5' end of fuzzy region, '3' to report at 3' end, or '0' to report in centre of fuzzy region. Default is no fuzz handling (similar to choosing Right - see Routh et al)."
    max_fuzz: "Select maximum allowed length of fuzzy region. Recombination events with longer fuzzy regions will not be reported. Default is Seed Length."
    micro_in_del_length: "Size of MicroInDels - these are common artifacts of cDNA preparation. See Routh et al JMB 2012. Default size is 0)"
    compound_handling: "Select this option for compound recombination event mapping (see manual for details). Enter number of nucleotides to map (must be less than Seed, and greater than number of nts in MicroInDel). Default is off."
    output_dir: "Enter a directory name that all compiled output files will be saved in."
    bed: "Output recombination data into BED files."
    input_data: "UnCompiled Results file from ViReMa run"
  }
}