class: CommandLineTool
id: translatorx.cwl
inputs:
- id: i
  doc: ': the file containing the nucleotide sequences in FASTA format (Required) '
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ': output file (Optional). Default: "translatorx_res".'
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: ': file containing the amino acid sequence alignment (Optional)'
  type: boolean
  inputBinding:
    prefix: -a
- id: p
  doc: ': program to build the multiple alignment (Optional). Available options are:
    M/C/F/P, standing for Muscle, Clustalw, Prank, and maFft Default: Muscle'
  type: boolean
  inputBinding:
    prefix: -p
- id: c
  doc: ': genetic code to translate the sequences (Optional). Available options are:
    1   Standard 2   Vertebrate Mitochondrial 3   Yeast Mitochondrial 4   Mold Mitochondrial;
    Protozoan Mitochondrial; Coelenterate Mitochondrial; Mycoplasma; Spiroplasma 5   Invertebrate
    Mitochondrial 6   Ciliate Nuclear; Dasycladacean Nuclear; Hexamita Nuclear 9   Echinoderm
    Mitochondrial; Flatworm Mitochondrial 10  Euplotid Nuclear 11  Bacterial and Plant
    Plastid 12  Alternative Yeast Nuclear 13  Ascidian Mitochondrial 14  Alternative
    Flatworm Mitochondrial 15  Blepharisma Macronuclear 16  Chlorophycean Mitochondrial
    21  Trematode Mitochondrial 22  Scenedesmus obliquus Mitochondrial 23  Thraustochytrium
    Mitochondrial 100 Ancestral Arthropod Mitochondrial Code (AGG=K) 101 Hemichordate
    Mitochondrial Default: 1 (Standard code)'
  type: boolean
  inputBinding:
    prefix: -c
- id: j
  doc: ': file containing alternative genetic codes for each taxon. (Optional) File
    format: Taxon        genetic_code[number]'
  type: boolean
  inputBinding:
    prefix: -j
- id: g
  doc: ': parameters for GBlocks (Optional) Example: -g "-b2 x -b3 x -b4 x..."'
  type: boolean
  inputBinding:
    prefix: -g
- id: t
  doc: ': F/T. Guess reading frame (Optional)[default F]'
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- translatorx
