class: CommandLineTool
id: AMAS.py_translate.cwl
inputs:
- id: in_code
  doc: "NCBI genetic code to use: 1. The Standard Code, 2. The\nVertebrate Mitochondrial\
    \ Code, 3. The Yeast\nMitochondrial Code, 4. The Mold, Protozoan, and\nCoelenterate\
    \ Mitochondrial Code and the\nMycoplasma/Spiroplasma Code, 5. The Invertebrate\n\
    Mitochondrial Code, 6. The Ciliate, Dasycladacean and\nHexamita Nuclear Code,\
    \ 9. The Echinoderm and Flatworm\nMitochondrial Code, 10. The Euplotid Nuclear\
    \ Code, 11.\nThe Bacterial, Archaeal and Plant Plastid Code, 12.\nThe Alternative\
    \ Yeast Nuclear Code, 13. The Ascidian\nMitochondrial Code, 14. The Alternative\
    \ Flatworm\nMitochondrial Code, 16. Chlorophycean Mitochondrial\nCode, 21. Trematode\
    \ Mitochondrial Code, 22.\nScenedesmus obliquus Mitochondrial Code, 23.\nThraustochytrium\
    \ Mitochondrial Code, 24. Pterobranchia\nMitochondrial Code, 25. Candidate Division\
    \ SR1 and\nGracilibacteria Code, 26. Pachysolen tannophilus\nNuclear Code. Default:\
    \ 1."
  type: string?
  inputBinding:
    prefix: --code
- id: in_reading_frame
  doc: "Number specifying reading frame; i.e. '2' means codons\nstart at the second\
    \ character of the alignment.\nDefault: 1"
  type: string?
  inputBinding:
    prefix: --reading-frame
- id: in_out_format
  doc: 'File format for the output alignment. Default: fasta'
  type: File?
  inputBinding:
    prefix: --out-format
- id: in_check_align
  doc: 'Check if input sequences are aligned. Default: no'
  type: boolean?
  inputBinding:
    prefix: --check-align
- id: in_in_files
  doc: "Alignment files to be taken as input. You can specify\nmultiple files using\
    \ wildcards (e.g. --in-files\n*fasta)"
  type: string[]
  inputBinding:
    prefix: --in-files
- id: in_in_format
  doc: The format of input alignment
  type: string?
  inputBinding:
    prefix: --in-format
- id: in_data_type
  doc: "Type of data\n"
  type: string?
  inputBinding:
    prefix: --data-type
- id: in_check
  doc: -c CORES, --cores CORES
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_format
  doc: 'File format for the output alignment. Default: fasta'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amas:1.0--pyh864c0ab_0
cwlVersion: v1.1
baseCommand:
- AMAS.py
- translate
