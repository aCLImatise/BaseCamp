version 1.0

task Anvigencontigsdatabase {
  input {
    File? contigs_fast_a
    File? project_name
    File? output_db_path
    File? description
    Int? split_length
    Int? km_er_size
    Boolean? skip_mindful_splitting
    Boolean? skip_gene_calling
    Int? prodigal_translation_table
    Int? external_gene_calls
    File? ignore_internal_stop_codons
  }
  command <<<
    anvi_gen_contigs_database \
      ~{if defined(contigs_fast_a) then ("--contigs-fasta " +  '"' + contigs_fast_a + '"') else ""} \
      ~{if defined(project_name) then ("--project-name " +  '"' + project_name + '"') else ""} \
      ~{if defined(output_db_path) then ("--output-db-path " +  '"' + output_db_path + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(split_length) then ("--split-length " +  '"' + split_length + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if (skip_mindful_splitting) then "--skip-mindful-splitting" else ""} \
      ~{if (skip_gene_calling) then "--skip-gene-calling" else ""} \
      ~{if defined(prodigal_translation_table) then ("--prodigal-translation-table " +  '"' + prodigal_translation_table + '"') else ""} \
      ~{if defined(external_gene_calls) then ("--external-gene-calls " +  '"' + external_gene_calls + '"') else ""} \
      ~{if (ignore_internal_stop_codons) then "--ignore-internal-stop-codons" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contigs_fast_a: "The FASTA file that contains reference sequences you\\nmapped your samples against. This could be a reference\\ngenome, or contigs from your assembler. Contig names\\nin this file must match to those in other input files.\\nIf there is a problem anvi'o will gracefully complain\\nabout it."
    project_name: "Name of the project. Please choose a short but\\ndescriptive name (so anvi'o can use it whenever she\\nneeds to name an output file, or add a new table in a\\ndatabase, or name her first born)."
    output_db_path: "Output file path for the new database."
    description: "A plain text file that contains some description about\\nthe project. You can use Markdwon syntax. The\\ndescription text will be rendered and shown in all\\nrelevant interfaces, including the anvi'o interactive\\ninterface, or anvi'o summary outputs."
    split_length: "Anvi'o splits very long contigs into smaller pieces,\\nwithout actually splitting them for real. These\\n'virtual' splits improve the efficacy of the\\nvisualization step, and changing the split size gives\\nfreedom to the user to adjust the resolution of their\\ndisplay when necessary. The default value is (20000).\\nIf you are planning to use your contigs database for\\nmetagenomic binning, we advise you to not go below\\n10,000 (since the lower the split size is, the more\\nitems to show in the display, and decreasing the split\\nsize does not really help much to binning). But if you\\nare thinking about using this parameter for ad hoc\\ninvestigations other than binning, you should ignore\\nour advice, and set the split size as low as you want.\\nIf you do not want your contigs to be split, you can\\nset the split size to '0' or any other negative\\ninteger (lots of unnecessary freedom here, enjoy!)."
    km_er_size: "K-mer size for k-mer frequency calculations. The\\ndefault k-mer size for composition-based analyses is\\n4, historically. Although tetra-nucleotide frequencies\\nseem to offer the the sweet spot of sensitivity,\\ninformation density, and manageable number of\\ndimensions for clustering approaches, you are welcome\\nto experiment (but maybe you should leave it as is for\\nyour first set of analyses)."
    skip_mindful_splitting: "By default, anvi'o attempts to prevent soft-splitting\\nlarge contigs by cutting proper gene calls to make\\nsure a single gene is not broken into multiple splits.\\nThis requires a careful examination of where genes\\nstart and end, and to find best locations to split\\ncontigs with respect to this information. So, when the\\nuser asks for a split size of, say, 1,000, it serves\\nas a mere suggestion. When this flag is used, anvi'o\\ndoes what the user wants and creates splits at desired\\nlengths (although some functionality may become\\nunavailable for the projects that rely on a contigs\\ndatabase that is initiated this way)."
    skip_gene_calling: "By default, generating an anvi'o contigs database\\nincludes the identification of open reading frames in\\ncontigs by running a bacterial gene caller. Declaring\\nthis flag will by-pass that process. If you prefer,\\nyou can later import your own gene calling results\\ninto the database."
    prodigal_translation_table: "This is a parameter to pass to the Prodigal for a\\nspecific translation table. This parameter corresponds\\nto the parameter `-g` in Prodigal, the default value\\nof which is 11 (so if you do not set anything, it will\\nbe set to 11 in Prodigal runtime. Please refer to the\\nProdigal documentation to determine what is the right\\ntranslation table for you if you think you need it.)"
    external_gene_calls: "A TAB-delimited file to utilize external gene calls.\\nThe file must have these columns: 'gene_callers_id' (a\\nunique integer number for each gene call, start from\\n1), 'contig' (the contig name the gene call is found),\\n'start' (start position, integer), 'stop' (stop\\nposition, integer), 'direction' (the direction of the\\ngene open reading frame; can be 'f' or 'r'), 'partial'\\n(whether it is a complete gene call, or a partial one;\\nmust be 1 for partial calls, and 0 for complete\\ncalls), 'source' (the gene caller), and 'version' (the\\nversion of the gene caller, i.e., v2.6.7 or v1.0). An\\nexample file can be found via the URL\\nhttps://bit.ly/2qEEHuQ"
    ignore_internal_stop_codons: "This is only relevant when you have an external gene\\ncalls file. If anvi'o figures out that your custom\\ngene calls result in amino acid sequences with stop\\ncodons in the middle, it will complain about it. You\\ncan use this flag to tell anvi'o to don't check for\\ninternal stop codons, EVEN THOUGH IT MEANS THERE IS\\nMOST LIKELY SOMETHING WRONG WITH YOUR EXTERNAL GENE\\nCALLS FILE. Anvi'o will understand that sometimes we\\ndon't want to care, and will not judge you. Instead,\\nit will replace every stop codon residue in the amino\\nacid sequence with an 'X' character. Please let us\\nknow if you used this and things failed, so we can\\ntell you that you shouldn't have really used it if you\\ndidn't like failures at the first place (smiley).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_project_name = "${in_project_name}"
    File out_output_db_path = "${in_output_db_path}"
    File out_ignore_internal_stop_codons = "${in_ignore_internal_stop_codons}"
  }
}