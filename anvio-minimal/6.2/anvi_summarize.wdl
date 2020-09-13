version 1.0

task Anvisummarize {
  input {
    String? pan_or_profile_db
    String? contigs_db
    File? genomes_storage
    Boolean? in_it_gene_coverages
    Boolean? reformat_contig_names
    File? report_aa_seqs_for_gene_calls
    Boolean? report_dna_sequences
    String? collection_name
    File? output_dir
    Boolean? list_collections
    String? taxonomic_level
    File? cog_data_dir
    Boolean? quick_summary
    Boolean? just_do_it
  }
  command <<<
    anvi_summarize \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(genomes_storage) then ("--genomes-storage " +  '"' + genomes_storage + '"') else ""} \
      ~{if (in_it_gene_coverages) then "--init-gene-coverages" else ""} \
      ~{if (reformat_contig_names) then "--reformat-contig-names" else ""} \
      ~{if (report_aa_seqs_for_gene_calls) then "--report-aa-seqs-for-gene-calls" else ""} \
      ~{if (report_dna_sequences) then "--report-DNA-sequences" else ""} \
      ~{if defined(collection_name) then ("--collection-name " +  '"' + collection_name + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (list_collections) then "--list-collections" else ""} \
      ~{if defined(taxonomic_level) then ("--taxonomic-level " +  '"' + taxonomic_level + '"') else ""} \
      ~{if defined(cog_data_dir) then ("--cog-data-dir " +  '"' + cog_data_dir + '"') else ""} \
      ~{if (quick_summary) then "--quick-summary" else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts)."
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen-\\ncontigs'"
    genomes_storage: "Anvi'o genomes storage file"
    in_it_gene_coverages: "Initialize gene coverage and detection data. This is a\\nvery computationally expensive step, but it is\\nnecessary when you need gene level coverage data. The\\nreason this is very computationally expensive is\\nbecause anvi'o computes gene coverages by going back\\nto actual coverage values of each gene to average\\nthem, instead of using contig average coverage values,\\nfor extreme accuracy."
    reformat_contig_names: "Reformat contig names while generating the summary\\noutput so they look fancy. With this flag, anvi'o will\\nreplace the original names of contigs to those that\\ninclude the bin name as a prefix in resulting summary\\noutput files per bin. Use this flag carefully as it\\nmay influence your downstream analyses due to the fact\\nthat your original contig names in your input FASTA\\nfile for the contigs database will not be in the\\nsummary output. Although, anvi'o will report a\\nconversion map per bin so you can recover the original\\ncontig name if you have to."
    report_aa_seqs_for_gene_calls: "You can use this flag if you would like amino acid AND\\ndna sequences for your gene calls in the genes output\\nfile. By default, only dna sequences are reported."
    report_dna_sequences: "By default, this program reports amino acid sequences.\\nUse this flag to report DNA sequences instead. Also\\nnote, since gene clusters are aligned via amino acid\\nsequences, using this flag removes alignment\\ninformation manifesting in the form of gap characters\\n(`-` characters) that would be present if amino acid\\nsequences were reported. Read the warnings during\\nruntime for more detailed information."
    collection_name: "Collection name."
    output_dir: "Directory path for output files"
    list_collections: "Show available collections and exit."
    taxonomic_level: "The taxonomic level to use whenever relevant and/or\\navailable. The default taxonomic level is t_genus, but\\nif you choose something specific, anvi'o will focus on\\nthat whenever possible."
    cog_data_dir: "The directory path for your COG setup. Anvi'o will try\\nto use the default path if you do not specify\\nanything."
    quick_summary: "When declared the summary output will be generated as\\nquickly as possible, with minimum amount of essential\\ninformation about bins."
    just_do_it: "Don't bother me with questions or warnings, just do\\nit.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_report_aa_seqs_for_gene_calls = "${in_report_aa_seqs_for_gene_calls}"
    File out_output_dir = "${in_output_dir}"
  }
}