version 1.0

task TranslatorxVLocal.pl {
  input {
    Boolean? file_containing_sequences
    Boolean? output_file_optional
    Boolean? file_containing_alignment
    Boolean? program_build_options
    Boolean? genetic_code_translate
    Boolean? file_containing_codes
    Boolean? parameters_gblocks_optional
    Boolean? ft_guess_reading
    String perl
    String translator_x_do_tpl
  }
  command <<<
    translatorx_vLocal.pl \
      ~{perl} \
      ~{translator_x_do_tpl} \
      ~{true="-i" false="" file_containing_sequences} \
      ~{true="-o" false="" output_file_optional} \
      ~{true="-a" false="" file_containing_alignment} \
      ~{true="-p" false="" program_build_options} \
      ~{true="-c" false="" genetic_code_translate} \
      ~{true="-j" false="" file_containing_codes} \
      ~{true="-g" false="" parameters_gblocks_optional} \
      ~{true="-t" false="" ft_guess_reading}
  >>>
  parameter_meta {
    file_containing_sequences: ": the file containing the nucleotide sequences in FASTA format (Required) "
    output_file_optional: ": output file (Optional). Default: \"translatorx_res\"."
    file_containing_alignment: ": file containing the amino acid sequence alignment (Optional)"
    program_build_options: ": program to build the multiple alignment (Optional). Available options are: M/C/F/P, standing for Muscle, Clustalw, Prank, and maFft Default: Muscle"
    genetic_code_translate: ": genetic code to translate the sequences (Optional). Available options are: 1   Standard 2   Vertebrate Mitochondrial 3   Yeast Mitochondrial 4   Mold Mitochondrial; Protozoan Mitochondrial; Coelenterate Mitochondrial; Mycoplasma; Spiroplasma 5   Invertebrate Mitochondrial 6   Ciliate Nuclear; Dasycladacean Nuclear; Hexamita Nuclear 9   Echinoderm Mitochondrial; Flatworm Mitochondrial 10  Euplotid Nuclear 11  Bacterial and Plant Plastid 12  Alternative Yeast Nuclear 13  Ascidian Mitochondrial 14  Alternative Flatworm Mitochondrial 15  Blepharisma Macronuclear 16  Chlorophycean Mitochondrial 21  Trematode Mitochondrial 22  Scenedesmus obliquus Mitochondrial 23  Thraustochytrium Mitochondrial 100 Ancestral Arthropod Mitochondrial Code (AGG=K) 101 Hemichordate Mitochondrial Default: 1 (Standard code)"
    file_containing_codes: ": file containing alternative genetic codes for each taxon. (Optional) File format: Taxon        genetic_code[number]"
    parameters_gblocks_optional: ": parameters for GBlocks (Optional) Example: -g \"-b2 x -b3 x -b4 x...\""
    ft_guess_reading: ": F/T. Guess reading frame (Optional)[default F]"
    perl: ""
    translator_x_do_tpl: ""
  }
}