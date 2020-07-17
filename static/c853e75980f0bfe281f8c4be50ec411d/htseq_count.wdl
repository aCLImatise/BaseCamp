version 1.0

task HtseqCount {
  input {
    String? format
    String? order
    Int? max_reads_in_buffer
    String? stranded
    Int? mina_qual
    String? type
    String? id_attr
    String? additional_attr
    String? mode
    String? non_unique
    String? secondary_alignments
    String? supplementary_alignments
    String? sam_out
    String? sam_out_format
    String? delimiter
    String? counts_output
    Boolean? append_output
    String? n_processes
    String? feature_query
    Boolean? quiet
    String sam_filenames
    String features_filename
  }
  command <<<
    htseq-count \
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
      ~{true="--append-output" false="" append_output} \
      ~{if defined(n_processes) then ("--nprocesses " +  '"' + n_processes + '"') else ""} \
      ~{if defined(feature_query) then ("--feature-query " +  '"' + feature_query + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    format: "Type of <alignment_file> data. DEPRECATED: file format is detected automatically. This option is ignored."
    order: "'pos' or 'name'. Sorting order of <alignment_file> (default: name). Paired-end sequencing data must be sorted either by position or by read name, and the sorting order must be specified. Ignored for single- end data."
    max_reads_in_buffer: "When <alignment_file> is paired end sorted by position, allow only so many reads to stay in memory until the mates are found (raising this number will use more memory). Has no effect for single end or paired end sorted by name"
    stranded: "Whether the data is from a strand-specific assay. Specify 'yes', 'no', or 'reverse' (default: yes). 'reverse' means 'yes' with reversed strand interpretation"
    mina_qual: "Skip all reads with MAPQ alignment quality lower than the given minimum value (default: 10). MAPQ is the 5th column of a SAM/BAM file and its usage depends on the software used to map the reads."
    type: "Feature type (3rd column in GTF file) to be used, all features of other type are ignored (default, suitable for Ensembl GTF files: exon)"
    id_attr: "GTF attribute to be used as feature ID (default, suitable for Ensembl GTF files: gene_id). All feature of the right type (see -t option) within the same GTF attribute will be added together. The typical way of using this option is to count all exonic reads from each gene and add the exons but other uses are possible as well."
    additional_attr: "Additional feature attributes (default: none, suitable for Ensembl GTF files: gene_name). Use multiple times for more than one additional attribute. These attributes are only used as annotations in the output, while the determination of how the counts are added together is done based on option -i."
    mode: "Mode to handle reads overlapping more than one feature (choices: union, intersection-strict, intersection- nonempty; default: union)"
    non_unique: "Whether and how to score reads that are not uniquely aligned or ambiguously assigned to features (choices: none, all, fraction, random; default: none)"
    secondary_alignments: "Whether to score secondary alignments (0x100 flag)"
    supplementary_alignments: "Whether to score supplementary alignments (0x800 flag)"
    sam_out: "Write out all SAM alignment records into SAM/BAM files (one per input file needed), annotating each line with its feature assignment (as an optional field with tag 'XF'). See the -p option to use BAM instead of SAM."
    sam_out_format: "Format to use with the --samout option."
    delimiter: "Column delimiter in output (default: TAB)."
    counts_output: "Filename to output the counts to instead of stdout."
    append_output: "Append counts output. This option is useful if you have already creates a TSV/CSV/similar file with a header for your samples (with additional columns for the feature name and any additionl attributes) and want to fill in the rest of the file."
    n_processes: "Number of parallel CPU processes to use (default: 1)."
    feature_query: "Restrict to features descibed in this expression. Currently supports a single kind of expression: attribute == \"one attr\" to restrict the GFF to a single gene or transcript, e.g. --feature-query 'gene_name == \"ACTB\"' - notice the single quotes around the argument of this option and the double quotes around the gene name. Broader queries might become available in the future."
    quiet: "Suppress progress report"
    sam_filenames: "Path to the SAM/BAM files containing the mapped reads. If '-' is selected, read from standard input"
    features_filename: "Path to the GTF file containing the features"
  }
}