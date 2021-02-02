class: CommandLineTool
id: translatorx_vLocal.pl.cwl
inputs:
- id: in_file_containing_sequences
  doc: ': the file containing the nucleotide sequences in FASTA format (Required)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_output_file_default
  doc: ': output file (Optional). Default: "translatorx_res".'
  type: File
  inputBinding:
    prefix: -o
- id: in_file_containing_sequence
  doc: ': file containing the amino acid sequence alignment (Optional)'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_program_build_alignment
  doc: ": program to build the multiple alignment (Optional). Available options are:\n\
    M/C/F/P, standing for Muscle, Clustalw, Prank, and maFft\nDefault: Muscle"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_genetic_code_translate
  doc: ": genetic code to translate the sequences (Optional). Available options are:\n\
    1   Standard\n2   Vertebrate Mitochondrial\n3   Yeast Mitochondrial\n4   Mold\
    \ Mitochondrial; Protozoan Mitochondrial; Coelenterate Mitochondrial; Mycoplasma;\
    \ Spiroplasma\n5   Invertebrate Mitochondrial\n6   Ciliate Nuclear; Dasycladacean\
    \ Nuclear; Hexamita Nuclear\n9   Echinoderm Mitochondrial; Flatworm Mitochondrial\n\
    10  Euplotid Nuclear\n11  Bacterial and Plant Plastid\n12  Alternative Yeast Nuclear\n\
    13  Ascidian Mitochondrial\n14  Alternative Flatworm Mitochondrial\n15  Blepharisma\
    \ Macronuclear\n16  Chlorophycean Mitochondrial\n21  Trematode Mitochondrial\n\
    22  Scenedesmus obliquus Mitochondrial\n23  Thraustochytrium Mitochondrial\n100\
    \ Ancestral Arthropod Mitochondrial Code (AGG=K)\n101 Hemichordate Mitochondrial\n\
    Default: 1 (Standard code)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_file_containing_codes
  doc: ": file containing alternative genetic codes for each taxon. (Optional)\nFile\
    \ format: Taxon        genetic_code[number]"
  type: boolean
  inputBinding:
    prefix: -j
- id: in_parameters_gblocks_optionalexample
  doc: ": parameters for GBlocks (Optional)\nExample: -g \"-b2 x -b3 x -b4 x...\""
  type: boolean
  inputBinding:
    prefix: -g
- id: in_ft_guess_reading
  doc: ': F/T. Guess reading frame (Optional)[default F]'
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_default
  doc: ': output file (Optional). Default: "translatorx_res".'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_default)
cwlVersion: v1.1
baseCommand:
- translatorx_vLocal.pl
