version 1.0

task TranslatorxVLocalpl {
  input {
    Boolean? file_containing_sequences
    File? output_file_default
    Boolean? file_containing_sequence
    Boolean? program_build_alignment
    Boolean? genetic_code_translate
    Boolean? file_containing_codes
    Boolean? parameters_gblocks_optionalexample
    Boolean? ft_guess_reading
  }
  command <<<
    translatorx_vLocal_pl \
      ~{if (file_containing_sequences) then "-i" else ""} \
      ~{if (output_file_default) then "-o" else ""} \
      ~{if (file_containing_sequence) then "-a" else ""} \
      ~{if (program_build_alignment) then "-p" else ""} \
      ~{if (genetic_code_translate) then "-c" else ""} \
      ~{if (file_containing_codes) then "-j" else ""} \
      ~{if (parameters_gblocks_optionalexample) then "-g" else ""} \
      ~{if (ft_guess_reading) then "-t" else ""}
  >>>
  parameter_meta {
    file_containing_sequences: ": the file containing the nucleotide sequences in FASTA format (Required)"
    output_file_default: ": output file (Optional). Default: \\\"translatorx_res\\\"."
    file_containing_sequence: ": file containing the amino acid sequence alignment (Optional)"
    program_build_alignment: ": program to build the multiple alignment (Optional). Available options are:\\nM/C/F/P, standing for Muscle, Clustalw, Prank, and maFft\\nDefault: Muscle"
    genetic_code_translate: ": genetic code to translate the sequences (Optional). Available options are:\\n1   Standard\\n2   Vertebrate Mitochondrial\\n3   Yeast Mitochondrial\\n4   Mold Mitochondrial; Protozoan Mitochondrial; Coelenterate Mitochondrial; Mycoplasma; Spiroplasma\\n5   Invertebrate Mitochondrial\\n6   Ciliate Nuclear; Dasycladacean Nuclear; Hexamita Nuclear\\n9   Echinoderm Mitochondrial; Flatworm Mitochondrial\\n10  Euplotid Nuclear\\n11  Bacterial and Plant Plastid\\n12  Alternative Yeast Nuclear\\n13  Ascidian Mitochondrial\\n14  Alternative Flatworm Mitochondrial\\n15  Blepharisma Macronuclear\\n16  Chlorophycean Mitochondrial\\n21  Trematode Mitochondrial\\n22  Scenedesmus obliquus Mitochondrial\\n23  Thraustochytrium Mitochondrial\\n100 Ancestral Arthropod Mitochondrial Code (AGG=K)\\n101 Hemichordate Mitochondrial\\nDefault: 1 (Standard code)"
    file_containing_codes: ": file containing alternative genetic codes for each taxon. (Optional)\\nFile format: Taxon        genetic_code[number]"
    parameters_gblocks_optionalexample: ": parameters for GBlocks (Optional)\\nExample: -g \\\"-b2 x -b3 x -b4 x...\\\""
    ft_guess_reading: ": F/T. Guess reading frame (Optional)[default F]"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}