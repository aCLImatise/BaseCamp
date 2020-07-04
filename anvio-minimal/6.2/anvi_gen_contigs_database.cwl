class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_gen_contigs_database.cwl
inputs:
- id: contigs_fast_a
  doc: The FASTA file that contains reference sequences you mapped your samples against.
    This could be a reference genome, or contigs from your assembler. Contig names
    in this file must match to those in other input files. If there is a problem anvi'o
    will gracefully complain about it.
  type: string
  inputBinding:
    prefix: --contigs-fasta
- id: project_name
  doc: Name of the project. Please choose a short but descriptive name (so anvi'o
    can use it whenever she needs to name an output file, or add a new table in a
    database, or name her first born).
  type: string
  inputBinding:
    prefix: --project-name
- id: output_db_path
  doc: Output file path for the new database.
  type: string
  inputBinding:
    prefix: --output-db-path
- id: description
  doc: A plain text file that contains some description about the project. You can
    use Markdwon syntax. The description text will be rendered and shown in all relevant
    interfaces, including the anvi'o interactive interface, or anvi'o summary outputs.
  type: string
  inputBinding:
    prefix: --description
- id: split_length
  doc: Anvi'o splits very long contigs into smaller pieces, without actually splitting
    them for real. These 'virtual' splits improve the efficacy of the visualization
    step, and changing the split size gives freedom to the user to adjust the resolution
    of their display when necessary. The default value is (20000). If you are planning
    to use your contigs database for metagenomic binning, we advise you to not go
    below 10,000 (since the lower the split size is, the more items to show in the
    display, and decreasing the split size does not really help much to binning).
    But if you are thinking about using this parameter for ad hoc investigations other
    than binning, you should ignore our advice, and set the split size as low as you
    want. If you do not want your contigs to be split, you can set the split size
    to '0' or any other negative integer (lots of unnecessary freedom here, enjoy!).
  type: long
  inputBinding:
    prefix: --split-length
- id: km_er_size
  doc: K-mer size for k-mer frequency calculations. The default k-mer size for composition-based
    analyses is 4, historically. Although tetra-nucleotide frequencies seem to offer
    the the sweet spot of sensitivity, information density, and manageable number
    of dimensions for clustering approaches, you are welcome to experiment (but maybe
    you should leave it as is for your first set of analyses).
  type: long
  inputBinding:
    prefix: --kmer-size
- id: skip_mindful_splitting
  doc: By default, anvi'o attempts to prevent soft-splitting large contigs by cutting
    proper gene calls to make sure a single gene is not broken into multiple splits.
    This requires a careful examination of where genes start and end, and to find
    best locations to split contigs with respect to this information. So, when the
    user asks for a split size of, say, 1,000, it serves as a mere suggestion. When
    this flag is used, anvi'o does what the user wants and creates splits at desired
    lengths (although some functionality may become unavailable for the projects that
    rely on a contigs database that is initiated this way).
  type: boolean
  inputBinding:
    prefix: --skip-mindful-splitting
- id: skip_gene_calling
  doc: By default, generating an anvi'o contigs database includes the identification
    of open reading frames in contigs by running a bacterial gene caller. Declaring
    this flag will by-pass that process. If you prefer, you can later import your
    own gene calling results into the database.
  type: boolean
  inputBinding:
    prefix: --skip-gene-calling
- id: prodigal_translation_table
  doc: This is a parameter to pass to the Prodigal for a specific translation table.
    This parameter corresponds to the parameter `-g` in Prodigal, the default value
    of which is 11 (so if you do not set anything, it will be set to 11 in Prodigal
    runtime. Please refer to the Prodigal documentation to determine what is the right
    translation table for you if you think you need it.)
  type: long
  inputBinding:
    prefix: --prodigal-translation-table
- id: external_gene_calls
  doc: "A TAB-delimited file to utilize external gene calls. The file must have these\
    \ columns: 'gene_callers_id' (a unique integer number for each gene call, start\
    \ from 1), 'contig' (the contig name the gene call is found), 'start' (start position,\
    \ integer), 'stop' (stop position, integer), 'direction' (the direction of the\
    \ gene open reading frame; can be 'f' or 'r'), 'partial' (whether it is a complete\
    \ gene call, or a partial one; must be 1 for partial calls, and 0 for complete\
    \ calls), 'source' (the gene caller), and 'version' (the version of the gene caller,\
    \ i.e., v2.6.7 or v1.0). An example file can be found via the URL https://bit.ly/2qEEHuQ"
  type: string
  inputBinding:
    prefix: --external-gene-calls
- id: ignore_internal_stop_codons
  doc: This is only relevant when you have an external gene calls file. If anvi'o
    figures out that your custom gene calls result in amino acid sequences with stop
    codons in the middle, it will complain about it. You can use this flag to tell
    anvi'o to don't check for internal stop codons, EVEN THOUGH IT MEANS THERE IS
    MOST LIKELY SOMETHING WRONG WITH YOUR EXTERNAL GENE CALLS FILE. Anvi'o will understand
    that sometimes we don't want to care, and will not judge you. Instead, it will
    replace every stop codon residue in the amino acid sequence with an 'X' character.
    Please let us know if you used this and things failed, so we can tell you that
    you shouldn't have really used it if you didn't like failures at the first place
    (smiley).
  type: boolean
  inputBinding:
    prefix: --ignore-internal-stop-codons
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-contigs-database
