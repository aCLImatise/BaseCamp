version 1.0

task Htseqcount {
  input {
    String? format
    String? order
    Int? max_reads_in_buffer
    String? stranded
    File? mina_qual
    File? type
    String? id_attr
    String? additional_attr
    String? mode
    String? non_unique
    String? secondary_alignments
    String? supplementary_alignments
    File? sam_out
    String? sam_out_format
    String? delimiter
    File? counts_output
    File? append_output
    Int? n_processes
    String? feature_query
    Boolean? quiet
    String sam_filenames
    String features_filename
  }
  command <<<
    htseq_count \
      ~{sam_filenames} \
      ~{features_filename} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(max_reads_in_buffer) then ("--max-reads-in-buffer " +  '"' + max_reads_in_buffer + '"') else ""} \
      ~{if defined(stranded) then ("--stranded " +  '"' + stranded + '"') else ""} \
      ~{if defined(mina_qual) then ("--minaqual " +  '"' + mina_qual + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(id_attr) then ("--idattr " +  '"' + id_attr + '"') else ""} \
      ~{if defined(additional_attr) then ("--additional-attr " +  '"' + additional_attr + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(non_unique) then ("--nonunique " +  '"' + non_unique + '"') else ""} \
      ~{if defined(secondary_alignments) then ("--secondary-alignments " +  '"' + secondary_alignments + '"') else ""} \
      ~{if defined(supplementary_alignments) then ("--supplementary-alignments " +  '"' + supplementary_alignments + '"') else ""} \
      ~{if defined(sam_out) then ("--samout " +  '"' + sam_out + '"') else ""} \
      ~{if defined(sam_out_format) then ("--samout-format " +  '"' + sam_out_format + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(counts_output) then ("--counts_output " +  '"' + counts_output + '"') else ""} \
      ~{if (append_output) then "--append-output" else ""} \
      ~{if defined(n_processes) then ("--nprocesses " +  '"' + n_processes + '"') else ""} \
      ~{if defined(feature_query) then ("--feature-query " +  '"' + feature_query + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "Type of <alignment_file> data. DEPRECATED: file format\\nis detected automatically. This option is ignored."
    order: "'pos' or 'name'. Sorting order of <alignment_file>\\n(default: name). Paired-end sequencing data must be\\nsorted either by position or by read name, and the\\nsorting order must be specified. Ignored for single-\\nend data."
    max_reads_in_buffer: "When <alignment_file> is paired end sorted by\\nposition, allow only so many reads to stay in memory\\nuntil the mates are found (raising this number will\\nuse more memory). Has no effect for single end or\\npaired end sorted by name"
    stranded: "Whether the data is from a strand-specific assay.\\nSpecify 'yes', 'no', or 'reverse' (default: yes).\\n'reverse' means 'yes' with reversed strand\\ninterpretation"
    mina_qual: "Skip all reads with MAPQ alignment quality lower than\\nthe given minimum value (default: 10). MAPQ is the 5th\\ncolumn of a SAM/BAM file and its usage depends on the\\nsoftware used to map the reads."
    type: "Feature type (3rd column in GTF file) to be used, all\\nfeatures of other type are ignored (default, suitable\\nfor Ensembl GTF files: exon)"
    id_attr: "GTF attribute to be used as feature ID (default,\\nsuitable for Ensembl GTF files: gene_id). All feature\\nof the right type (see -t option) within the same GTF\\nattribute will be added together. The typical way of\\nusing this option is to count all exonic reads from\\neach gene and add the exons but other uses are\\npossible as well."
    additional_attr: "Additional feature attributes (default: none, suitable\\nfor Ensembl GTF files: gene_name). Use multiple times\\nfor more than one additional attribute. These\\nattributes are only used as annotations in the output,\\nwhile the determination of how the counts are added\\ntogether is done based on option -i."
    mode: "Mode to handle reads overlapping more than one feature\\n(choices: union, intersection-strict, intersection-\\nnonempty; default: union)"
    non_unique: "Whether and how to score reads that are not uniquely\\naligned or ambiguously assigned to features (choices:\\nnone, all, fraction, random; default: none)"
    secondary_alignments: "Whether to score secondary alignments (0x100 flag)"
    supplementary_alignments: "Whether to score supplementary alignments (0x800 flag)"
    sam_out: "Write out all SAM alignment records into SAM/BAM files\\n(one per input file needed), annotating each line with\\nits feature assignment (as an optional field with tag\\n'XF'). See the -p option to use BAM instead of SAM."
    sam_out_format: "Format to use with the --samout option."
    delimiter: "Column delimiter in output (default: TAB)."
    counts_output: "Filename to output the counts to instead of stdout."
    append_output: "Append counts output. This option is useful if you\\nhave already creates a TSV/CSV/similar file with a\\nheader for your samples (with additional columns for\\nthe feature name and any additionl attributes) and\\nwant to fill in the rest of the file."
    n_processes: "Number of parallel CPU processes to use (default: 1)."
    feature_query: "Restrict to features descibed in this expression.\\nCurrently supports a single kind of expression:\\nattribute == \\\"one attr\\\" to restrict the GFF to a\\nsingle gene or transcript, e.g. --feature-query\\n'gene_name == \\\"ACTB\\\"' - notice the single quotes\\naround the argument of this option and the double\\nquotes around the gene name. Broader queries might\\nbecome available in the future."
    quiet: "Suppress progress report"
    sam_filenames: "Path to the SAM/BAM files containing the mapped reads.\\nIf '-' is selected, read from standard input"
    features_filename: "Path to the GTF file containing the features"
  }
  output {
    File out_stdout = stdout()
    File out_counts_output = "${in_counts_output}"
    File out_append_output = "${in_append_output}"
  }
}