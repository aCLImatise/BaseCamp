version 1.0

task CompilerModulepy {
  input {
    File? output_tag
    Boolean? ded_up
    Boolean? read_names_entry
    Int? de_fuzz
    Int? max_fuzz
    Int? micro_in_del_length
    Int? compound_handling
    Directory? output_dir
    Boolean? bed
  }
  command <<<
    Compiler_Module_py \
      ~{if defined(output_tag) then ("--Output_Tag " +  '"' + output_tag + '"') else ""} \
      ~{if (ded_up) then "-DeDup" else ""} \
      ~{if (read_names_entry) then "-ReadNamesEntry" else ""} \
      ~{if defined(de_fuzz) then ("--Defuzz " +  '"' + de_fuzz + '"') else ""} \
      ~{if defined(max_fuzz) then ("--MaxFuzz " +  '"' + max_fuzz + '"') else ""} \
      ~{if defined(micro_in_del_length) then ("--MicroInDel_Length " +  '"' + micro_in_del_length + '"') else ""} \
      ~{if defined(compound_handling) then ("--Compound_Handling " +  '"' + compound_handling + '"') else ""} \
      ~{if defined(output_dir) then ("--Output_Dir " +  '"' + output_dir + '"') else ""} \
      ~{if (bed) then "-BED" else ""}
  >>>
  parameter_meta {
    output_tag: "Enter a tag name that will be appended to end of each\\noutput file."
    ded_up: "Remove potential PCR duplicates. Default is off."
    read_names_entry: "Append Read Names contributing to each compiled\\nresult. Default is off."
    de_fuzz: "Choose how to defuzz data: '5' to report at 5' end of\\nfuzzy region, '3' to report at 3' end, or '0' to\\nreport in centre of fuzzy region. Default is no fuzz\\nhandling (similar to choosing Right - see Routh et\\nal)."
    max_fuzz: "Select maximum allowed length of fuzzy region.\\nRecombination events with longer fuzzy regions will\\nnot be reported. Default is Seed Length."
    micro_in_del_length: "Size of MicroInDels - these are common artifacts of\\ncDNA preparation. See Routh et al JMB 2012. Default\\nsize is 0)"
    compound_handling: "Select this option for compound recombination event\\nmapping (see manual for details). Enter number of\\nnucleotides to map (must be less than Seed, and\\ngreater than number of nts in MicroInDel). Default is\\noff."
    output_dir: "Enter a directory name that all compiled output files\\nwill be saved in."
    bed: "Output recombination data into BED files."
  }
  output {
    File out_stdout = stdout()
    File out_output_tag = "${in_output_tag}"
    Directory out_output_dir = "${in_output_dir}"
  }
}