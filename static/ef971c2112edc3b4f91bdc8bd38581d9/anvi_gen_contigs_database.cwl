class: CommandLineTool
id: anvi_gen_contigs_database.cwl
inputs:
- id: in_contigs_fast_a
  doc: "The FASTA file that contains reference sequences you\nmapped your samples\
    \ against. This could be a reference\ngenome, or contigs from your assembler.\
    \ Contig names\nin this file must match to those in other input files.\nIf there\
    \ is a problem anvi'o will gracefully complain\nabout it."
  type: File?
  inputBinding:
    prefix: --contigs-fasta
- id: in_project_name
  doc: "Name of the project. Please choose a short but\ndescriptive name (so anvi'o\
    \ can use it whenever she\nneeds to name an output file, or add a new table in\
    \ a\ndatabase, or name her first born)."
  type: File?
  inputBinding:
    prefix: --project-name
- id: in_output_db_path
  doc: Output file path for the new database.
  type: File?
  inputBinding:
    prefix: --output-db-path
- id: in_description
  doc: "A plain text file that contains some description about\nthe project. You can\
    \ use Markdwon syntax. The\ndescription text will be rendered and shown in all\n\
    relevant interfaces, including the anvi'o interactive\ninterface, or anvi'o summary\
    \ outputs."
  type: File?
  inputBinding:
    prefix: --description
- id: in_split_length
  doc: "Anvi'o splits very long contigs into smaller pieces,\nwithout actually splitting\
    \ them for real. These\n'virtual' splits improve the efficacy of the\nvisualization\
    \ step, and changing the split size gives\nfreedom to the user to adjust the resolution\
    \ of their\ndisplay when necessary. The default value is (20000).\nIf you are\
    \ planning to use your contigs database for\nmetagenomic binning, we advise you\
    \ to not go below\n10,000 (since the lower the split size is, the more\nitems\
    \ to show in the display, and decreasing the split\nsize does not really help\
    \ much to binning). But if you\nare thinking about using this parameter for ad\
    \ hoc\ninvestigations other than binning, you should ignore\nour advice, and set\
    \ the split size as low as you want.\nIf you do not want your contigs to be split,\
    \ you can\nset the split size to '0' or any other negative\ninteger (lots of unnecessary\
    \ freedom here, enjoy!)."
  type: long?
  inputBinding:
    prefix: --split-length
- id: in_km_er_size
  doc: "K-mer size for k-mer frequency calculations. The\ndefault k-mer size for composition-based\
    \ analyses is\n4, historically. Although tetra-nucleotide frequencies\nseem to\
    \ offer the the sweet spot of sensitivity,\ninformation density, and manageable\
    \ number of\ndimensions for clustering approaches, you are welcome\nto experiment\
    \ (but maybe you should leave it as is for\nyour first set of analyses)."
  type: long?
  inputBinding:
    prefix: --kmer-size
- id: in_skip_mindful_splitting
  doc: "By default, anvi'o attempts to prevent soft-splitting\nlarge contigs by cutting\
    \ proper gene calls to make\nsure a single gene is not broken into multiple splits.\n\
    This requires a careful examination of where genes\nstart and end, and to find\
    \ best locations to split\ncontigs with respect to this information. So, when\
    \ the\nuser asks for a split size of, say, 1,000, it serves\nas a mere suggestion.\
    \ When this flag is used, anvi'o\ndoes what the user wants and creates splits\
    \ at desired\nlengths (although some functionality may become\nunavailable for\
    \ the projects that rely on a contigs\ndatabase that is initiated this way)."
  type: boolean?
  inputBinding:
    prefix: --skip-mindful-splitting
- id: in_skip_gene_calling
  doc: "By default, generating an anvi'o contigs database\nincludes the identification\
    \ of open reading frames in\ncontigs by running a bacterial gene caller. Declaring\n\
    this flag will by-pass that process. If you prefer,\nyou can later import your\
    \ own gene calling results\ninto the database."
  type: boolean?
  inputBinding:
    prefix: --skip-gene-calling
- id: in_prodigal_translation_table
  doc: "This is a parameter to pass to the Prodigal for a\nspecific translation table.\
    \ This parameter corresponds\nto the parameter `-g` in Prodigal, the default value\n\
    of which is 11 (so if you do not set anything, it will\nbe set to 11 in Prodigal\
    \ runtime. Please refer to the\nProdigal documentation to determine what is the\
    \ right\ntranslation table for you if you think you need it.)"
  type: long?
  inputBinding:
    prefix: --prodigal-translation-table
- id: in_external_gene_calls
  doc: "A TAB-delimited file to utilize external gene calls.\nThe file must have these\
    \ columns: 'gene_callers_id' (a\nunique integer number for each gene call, start\
    \ from\n1), 'contig' (the contig name the gene call is found),\n'start' (start\
    \ position, integer), 'stop' (stop\nposition, integer), 'direction' (the direction\
    \ of the\ngene open reading frame; can be 'f' or 'r'), 'partial'\n(whether it\
    \ is a complete gene call, or a partial one;\nmust be 1 for partial calls, and\
    \ 0 for complete\ncalls), 'source' (the gene caller), and 'version' (the\nversion\
    \ of the gene caller, i.e., v2.6.7 or v1.0). An\nexample file can be found via\
    \ the URL\nhttps://bit.ly/2qEEHuQ"
  type: long?
  inputBinding:
    prefix: --external-gene-calls
- id: in_ignore_internal_stop_codons
  doc: "This is only relevant when you have an external gene\ncalls file. If anvi'o\
    \ figures out that your custom\ngene calls result in amino acid sequences with\
    \ stop\ncodons in the middle, it will complain about it. You\ncan use this flag\
    \ to tell anvi'o to don't check for\ninternal stop codons, EVEN THOUGH IT MEANS\
    \ THERE IS\nMOST LIKELY SOMETHING WRONG WITH YOUR EXTERNAL GENE\nCALLS FILE. Anvi'o\
    \ will understand that sometimes we\ndon't want to care, and will not judge you.\
    \ Instead,\nit will replace every stop codon residue in the amino\nacid sequence\
    \ with an 'X' character. Please let us\nknow if you used this and things failed,\
    \ so we can\ntell you that you shouldn't have really used it if you\ndidn't like\
    \ failures at the first place (smiley).\n"
  type: File?
  inputBinding:
    prefix: --ignore-internal-stop-codons
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_project_name
  doc: "Name of the project. Please choose a short but\ndescriptive name (so anvi'o\
    \ can use it whenever she\nneeds to name an output file, or add a new table in\
    \ a\ndatabase, or name her first born)."
  type: File?
  outputBinding:
    glob: $(inputs.in_project_name)
- id: out_output_db_path
  doc: Output file path for the new database.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_db_path)
- id: out_ignore_internal_stop_codons
  doc: "This is only relevant when you have an external gene\ncalls file. If anvi'o\
    \ figures out that your custom\ngene calls result in amino acid sequences with\
    \ stop\ncodons in the middle, it will complain about it. You\ncan use this flag\
    \ to tell anvi'o to don't check for\ninternal stop codons, EVEN THOUGH IT MEANS\
    \ THERE IS\nMOST LIKELY SOMETHING WRONG WITH YOUR EXTERNAL GENE\nCALLS FILE. Anvi'o\
    \ will understand that sometimes we\ndon't want to care, and will not judge you.\
    \ Instead,\nit will replace every stop codon residue in the amino\nacid sequence\
    \ with an 'X' character. Please let us\nknow if you used this and things failed,\
    \ so we can\ntell you that you shouldn't have really used it if you\ndidn't like\
    \ failures at the first place (smiley).\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_ignore_internal_stop_codons)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-contigs-database
