version 1.0

task Quantify {
  input {
    File? input_file
    File? arg_output_file
    File? arg_annotated_vcf
    String? output_summary
    String? output_filter_rocs
    String? roc_filter
    String? roc_delta
    String? qq
    String? qq_header
    File? arg_reference_fasta
    Boolean? arg_start_location
    Boolean? arg_region_bed
    Int? roc_regions
    Int? type
    Boolean? arg_bed_file
    String? limit_records
    String? message_every
    Boolean? arg_apply_filtering
    String? count_hom_ref
    String? output_vtc
    Int? clean_info
    Int? output_rocs
    String? fix_chr_regions
    Int? threads
    Int? block_size
  }
  command <<<
    quantify \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_annotated_vcf) then "-v" else ""} \
      ~{if defined(output_summary) then ("--output-summary " +  '"' + output_summary + '"') else ""} \
      ~{if defined(output_filter_rocs) then ("--output-filter-rocs " +  '"' + output_filter_rocs + '"') else ""} \
      ~{if defined(roc_filter) then ("--roc-filter " +  '"' + roc_filter + '"') else ""} \
      ~{if defined(roc_delta) then ("--roc-delta " +  '"' + roc_delta + '"') else ""} \
      ~{if defined(qq) then ("--qq " +  '"' + qq + '"') else ""} \
      ~{if defined(qq_header) then ("--qq-header " +  '"' + qq_header + '"') else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_start_location) then "-l" else ""} \
      ~{if (arg_region_bed) then "-R" else ""} \
      ~{if defined(roc_regions) then ("--roc-regions " +  '"' + roc_regions + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (arg_bed_file) then "-O" else ""} \
      ~{if defined(limit_records) then ("--limit-records " +  '"' + limit_records + '"') else ""} \
      ~{if defined(message_every) then ("--message-every " +  '"' + message_every + '"') else ""} \
      ~{if (arg_apply_filtering) then "-f" else ""} \
      ~{if defined(count_hom_ref) then ("--count-homref " +  '"' + count_hom_ref + '"') else ""} \
      ~{if defined(output_vtc) then ("--output-vtc " +  '"' + output_vtc + '"') else ""} \
      ~{if defined(clean_info) then ("--clean-info " +  '"' + clean_info + '"') else ""} \
      ~{if defined(output_rocs) then ("--output-rocs " +  '"' + output_rocs + '"') else ""} \
      ~{if defined(fix_chr_regions) then ("--fix-chr-regions " +  '"' + fix_chr_regions + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(block_size) then ("--blocksize " +  '"' + block_size + '"') else ""}
  >>>
  parameter_meta {
    input_file: "The input file"
    arg_output_file: "[ --output-file ] arg   The output file name (TSV Format)."
    arg_annotated_vcf: "[ --output-vcf ] arg    Annotated VCF file (with bed annotations)."
    output_summary: "Output a summary table with TP / FP / FN / UNK\\ncounts, precision, recall, etc."
    output_filter_rocs: "Output ROC levels for filters."
    roc_filter: "Ignore certain filters when creating a ROC."
    roc_delta: "Minium spacing of levels on ROC QQ trace."
    qq: "Field to use for QQ (ROC quantity). Can be QUAL /\\nGQ / ... / any INFO field name."
    qq_header: "Field header to use for QQ in output tables (ROC\\nquantity). Defaults to QQ."
    arg_reference_fasta: "[ --reference ] arg     The reference fasta file (needed only for VCF\\noutput)."
    arg_start_location: "[ --location ] arg      Start location."
    arg_region_bed: "[ --regions ] arg       Region bed file. You can attach a label by\\nprefixing with a colon, e.g. -R\\nFP2:false-positives-type2.bed"
    roc_regions: "Regions to compute ROCs in. By default, only the\\n'*' region (total unstratified counts) will\\nproduce ROC counts. For example, --roc-regions '*'\\n--roc-regions FP2 also produces a ROC in the FP2\\nregions."
    type: "Quantification method to use. Current choices are\\nxcmp or ga4gh."
    arg_bed_file: "[ --only ] arg          Bed file of locations (equivalent to -R in\\nbcftools)"
    limit_records: "Maximum umber of records to process"
    message_every: "Print a message every N records."
    arg_apply_filtering: "[ --apply-filters ] arg Apply filtering in VCF."
    count_hom_ref: "Count homref locations."
    output_vtc: "Output variant types counted (debugging)."
    clean_info: "Set to zero to preserve INFO fields (default is 1)"
    output_rocs: "Output ROCs with full set of levels of QQ values\\n(default is 1, disable for more concise output)"
    fix_chr_regions: "Add chr prefix to regions if necessary (default is\\noff)."
    threads: "Number of threads to use."
    block_size: "Number of variants per block."
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
    File out_arg_annotated_vcf = "${in_arg_annotated_vcf}"
    File out_arg_reference_fasta = "${in_arg_reference_fasta}"
  }
}