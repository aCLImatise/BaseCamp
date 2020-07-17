version 1.0

task HtseqCountBarcodes {
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
    String? cell_barcode
    String? umi
    Boolean? quiet
    String sam_filename
    String features_filename
  }
  command <<<
    htseq-count-barcodes \
      ~{sam_filename} \
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
      ~{if defined(cell_barcode) then ("--cell-barcode " +  '"' + cell_barcode + '"') else ""} \
      ~{if defined(umi) then ("--UMI " +  '"' + umi + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    format: "Type of <alignment_file> data. DEPRECATED: file format is detected automatically. This option is ignored."
    order: "'pos' or 'name'. Sorting order of <alignment_file> (default: name). Paired-end sequencing data must be sorted either by position or by read name, and the sorting order must be specified. Ignored for single- end data."
    max_reads_in_buffer: "When <alignment_file> is paired end sorted by position, allow only so many reads to stay in memory until the mates are found (raising this number will use more memory). Has no effect for single end or paired end sorted by name"
    stranded: "Whether the data is from a strand-specific assay. Specify 'yes', 'no', or 'reverse' (default: yes). 'reverse' means 'yes' with reversed strand interpretation"
    mina_qual: "Skip all reads with MAPQ alignment quality lower than the given minimum value (default: 10). MAPQ is the 5th column of a SAM/BAM file and its usage depends on the software used to map the reads."
    type: "Feature type (3rd column in GTF file) to be used, all features of other type are ignored (default, suitable for Ensembl GTF files: exon)"
    id_attr: "GTF attribute to be used as feature ID (default, suitable for Ensembl GTF files: gene_id)"
    additional_attr: "Additional feature attributes (default: none, suitable for Ensembl GTF files: gene_name). Use multiple times for each different attribute"
    mode: "Mode to handle reads overlapping more than one feature (choices: union, intersection-strict, intersection- nonempty; default: union)"
    non_unique: "Whether to score reads that are not uniquely aligned or ambiguously assigned to features"
    secondary_alignments: "Whether to score secondary alignments (0x100 flag)"
    supplementary_alignments: "Whether to score supplementary alignments (0x800 flag)"
    sam_out: "Write out all SAM alignment records into aSAM/BAM file, annotating each line with its feature assignment (as an optional field with tag 'XF'). See the -p option to use BAM instead of SAM."
    sam_out_format: "Format to use with the --samout option."
    delimiter: "Column delimiter in output (default: TAB)."
    counts_output: "TSV/CSV filename to output the counts to instead of stdout."
    cell_barcode: "BAM tag used for the cell barcode (default compatible with 10X Genomics Chromium is CB)."
    umi: "BAM tag used for the unique molecular identifier, also known as molecular barcode (default compatible with 10X Genomics Chromium is UB)."
    quiet: "Suppress progress report"
    sam_filename: "Path to the SAM/BAM file containing the barcoded, mapped reads. If '-' is selected, read from standard input"
    features_filename: "Path to the GTF file containing the features"
  }
}