version 1.0

task AnviGenContigsDatabase {
  input {
    String? contigs_fast_a
    String? project_name
    String? output_db_path
    String? description
    Int? split_length
    Int? km_er_size
    Boolean? skip_mindful_splitting
    Boolean? skip_gene_calling
    Int? prodigal_translation_table
    String? external_gene_calls
    Boolean? ignore_internal_stop_codons
  }
  command <<<
    anvi-gen-contigs-database \
      ~{if defined(contigs_fast_a) then ("--contigs-fasta " +  '"' + contigs_fast_a + '"') else ""} \
      ~{if defined(project_name) then ("--project-name " +  '"' + project_name + '"') else ""} \
      ~{if defined(output_db_path) then ("--output-db-path " +  '"' + output_db_path + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(split_length) then ("--split-length " +  '"' + split_length + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{true="--skip-mindful-splitting" false="" skip_mindful_splitting} \
      ~{true="--skip-gene-calling" false="" skip_gene_calling} \
      ~{if defined(prodigal_translation_table) then ("--prodigal-translation-table " +  '"' + prodigal_translation_table + '"') else ""} \
      ~{if defined(external_gene_calls) then ("--external-gene-calls " +  '"' + external_gene_calls + '"') else ""} \
      ~{true="--ignore-internal-stop-codons" false="" ignore_internal_stop_codons}
  >>>
  parameter_meta {
    contigs_fast_a: "The FASTA file that contains reference sequences you mapped your samples against. This could be a reference genome, or contigs from your assembler. Contig names in this file must match to those in other input files. If there is a problem anvi'o will gracefully complain about it."
    project_name: "Name of the project. Please choose a short but descriptive name (so anvi'o can use it whenever she needs to name an output file, or add a new table in a database, or name her first born)."
    output_db_path: "Output file path for the new database."
    description: "A plain text file that contains some description about the project. You can use Markdwon syntax. The description text will be rendered and shown in all relevant interfaces, including the anvi'o interactive interface, or anvi'o summary outputs."
    split_length: "Anvi'o splits very long contigs into smaller pieces, without actually splitting them for real. These 'virtual' splits improve the efficacy of the visualization step, and changing the split size gives freedom to the user to adjust the resolution of their display when necessary. The default value is (20000). If you are planning to use your contigs database for metagenomic binning, we advise you to not go below 10,000 (since the lower the split size is, the more items to show in the display, and decreasing the split size does not really help much to binning). But if you are thinking about using this parameter for ad hoc investigations other than binning, you should ignore our advice, and set the split size as low as you want. If you do not want your contigs to be split, you can set the split size to '0' or any other negative integer (lots of unnecessary freedom here, enjoy!)."
    km_er_size: "K-mer size for k-mer frequency calculations. The default k-mer size for composition-based analyses is 4, historically. Although tetra-nucleotide frequencies seem to offer the the sweet spot of sensitivity, information density, and manageable number of dimensions for clustering approaches, you are welcome to experiment (but maybe you should leave it as is for your first set of analyses)."
    skip_mindful_splitting: "By default, anvi'o attempts to prevent soft-splitting large contigs by cutting proper gene calls to make sure a single gene is not broken into multiple splits. This requires a careful examination of where genes start and end, and to find best locations to split contigs with respect to this information. So, when the user asks for a split size of, say, 1,000, it serves as a mere suggestion. When this flag is used, anvi'o does what the user wants and creates splits at desired lengths (although some functionality may become unavailable for the projects that rely on a contigs database that is initiated this way)."
    skip_gene_calling: "By default, generating an anvi'o contigs database includes the identification of open reading frames in contigs by running a bacterial gene caller. Declaring this flag will by-pass that process. If you prefer, you can later import your own gene calling results into the database."
    prodigal_translation_table: "This is a parameter to pass to the Prodigal for a specific translation table. This parameter corresponds to the parameter `-g` in Prodigal, the default value of which is 11 (so if you do not set anything, it will be set to 11 in Prodigal runtime. Please refer to the Prodigal documentation to determine what is the right translation table for you if you think you need it.)"
    external_gene_calls: "A TAB-delimited file to utilize external gene calls. The file must have these columns: 'gene_callers_id' (a unique integer number for each gene call, start from 1), 'contig' (the contig name the gene call is found), 'start' (start position, integer), 'stop' (stop position, integer), 'direction' (the direction of the gene open reading frame; can be 'f' or 'r'), 'partial' (whether it is a complete gene call, or a partial one; must be 1 for partial calls, and 0 for complete calls), 'source' (the gene caller), and 'version' (the version of the gene caller, i.e., v2.6.7 or v1.0). An example file can be found via the URL https://bit.ly/2qEEHuQ"
    ignore_internal_stop_codons: "This is only relevant when you have an external gene calls file. If anvi'o figures out that your custom gene calls result in amino acid sequences with stop codons in the middle, it will complain about it. You can use this flag to tell anvi'o to don't check for internal stop codons, EVEN THOUGH IT MEANS THERE IS MOST LIKELY SOMETHING WRONG WITH YOUR EXTERNAL GENE CALLS FILE. Anvi'o will understand that sometimes we don't want to care, and will not judge you. Instead, it will replace every stop codon residue in the amino acid sequence with an 'X' character. Please let us know if you used this and things failed, so we can tell you that you shouldn't have really used it if you didn't like failures at the first place (smiley)."
  }
}