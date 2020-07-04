version 1.0

task Quantify {
  input {
    String? input_file
    Boolean? arg_output_file
    Boolean? arg_annotated_vcf
    String? output_summary
    String? output_filter_rocs
    String? roc_filter
    String? roc_delta
    String? qq
    String? qq_header
    Boolean? arg_reference_fasta
    Boolean? arg_start_location
    Boolean? arg_region_bed
    String? roc_regions
    String? type
    Boolean? arg_bed_file
    String? limit_records
    String? message_every
    Boolean? arg_apply_filtering
    String? count_hom_ref
    String? output_vtc
    String? clean_info
    String? output_rocs
    String? fix_chr_regions
    String? threads
    String? block_size
  }
  command <<<
    quantify \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-v" false="" arg_annotated_vcf} \
      ~{if defined(output_summary) then ("--output-summary " +  '"' + output_summary + '"') else ""} \
      ~{if defined(output_filter_rocs) then ("--output-filter-rocs " +  '"' + output_filter_rocs + '"') else ""} \
      ~{if defined(roc_filter) then ("--roc-filter " +  '"' + roc_filter + '"') else ""} \
      ~{if defined(roc_delta) then ("--roc-delta " +  '"' + roc_delta + '"') else ""} \
      ~{if defined(qq) then ("--qq " +  '"' + qq + '"') else ""} \
      ~{if defined(qq_header) then ("--qq-header " +  '"' + qq_header + '"') else ""} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-l" false="" arg_start_location} \
      ~{true="-R" false="" arg_region_bed} \
      ~{if defined(roc_regions) then ("--roc-regions " +  '"' + roc_regions + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{true="-O" false="" arg_bed_file} \
      ~{if defined(limit_records) then ("--limit-records " +  '"' + limit_records + '"') else ""} \
      ~{if defined(message_every) then ("--message-every " +  '"' + message_every + '"') else ""} \
      ~{true="-f" false="" arg_apply_filtering} \
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
    output_summary: "Output a summary table with TP / FP / FN / UNK  counts, precision, recall, etc."
    output_filter_rocs: "Output ROC levels for filters."
    roc_filter: "Ignore certain filters when creating a ROC."
    roc_delta: "Minium spacing of levels on ROC QQ trace."
    qq: "Field to use for QQ (ROC quantity). Can be QUAL /  GQ / ... / any INFO field name."
    qq_header: "Field header to use for QQ in output tables (ROC  quantity). Defaults to QQ."
    arg_reference_fasta: "[ --reference ] arg     The reference fasta file (needed only for VCF  output)."
    arg_start_location: "[ --location ] arg      Start location."
    arg_region_bed: "[ --regions ] arg       Region bed file. You can attach a label by  prefixing with a colon, e.g. -R  FP2:false-positives-type2.bed"
    roc_regions: "Regions to compute ROCs in. By default, only the  '*' region (total unstratified counts) will  produce ROC counts. For example, --roc-regions '*' --roc-regions FP2 also produces a ROC in the FP2  regions."
    type: "Quantification method to use. Current choices are  xcmp or ga4gh."
    arg_bed_file: "[ --only ] arg          Bed file of locations (equivalent to -R in  bcftools)"
    limit_records: "Maximum umber of records to process"
    message_every: "Print a message every N records."
    arg_apply_filtering: "[ --apply-filters ] arg Apply filtering in VCF."
    count_hom_ref: "Count homref locations."
    output_vtc: "Output variant types counted (debugging)."
    clean_info: "Set to zero to preserve INFO fields (default is 1)"
    output_rocs: "Output ROCs with full set of levels of QQ values  (default is 1, disable for more concise output)"
    fix_chr_regions: "Add chr prefix to regions if necessary (default is off)."
    threads: "Number of threads to use."
    block_size: "Number of variants per block."
  }
}