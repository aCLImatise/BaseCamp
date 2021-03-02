version 1.0

task SamtoolsMpileup {
  input {
    Boolean? illumina_one_dot_three
    Boolean? count_orphans
    File? bam_list
    Boolean? no_baq
    Int? adjust_mq
    Int? max_depth
    Boolean? redo_baq
    File? fast_a_ref
    File? exclude_rg
    File? positions
    Int? min_mq
    Int? min_bq
    String? region
    Boolean? ignore_rg
    Int? incl_flags
    Int? excl_flags
    Boolean? ignore_overlaps
    Boolean? customized_index
    File? write_output_file
    Boolean? output_bp
    Boolean? output_mq
    Boolean? output_qname
    String? output_extra
    String? output_sep
    String? output_empty
    Boolean? reverse_del
    File? input_fmt_option
    File? reference
    Int? verbosity
    Int in_one_dot_bam
  }
  command <<<
    samtools mpileup \
      ~{in_one_dot_bam} \
      ~{if (illumina_one_dot_three) then "--illumina1.3" else ""} \
      ~{if (count_orphans) then "--count-orphans" else ""} \
      ~{if defined(bam_list) then ("--bam-list " +  '"' + bam_list + '"') else ""} \
      ~{if (no_baq) then "--no-BAQ" else ""} \
      ~{if defined(adjust_mq) then ("--adjust-MQ " +  '"' + adjust_mq + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if (redo_baq) then "--redo-BAQ" else ""} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{if defined(exclude_rg) then ("--exclude-RG " +  '"' + exclude_rg + '"') else ""} \
      ~{if defined(positions) then ("--positions " +  '"' + positions + '"') else ""} \
      ~{if defined(min_mq) then ("--min-MQ " +  '"' + min_mq + '"') else ""} \
      ~{if defined(min_bq) then ("--min-BQ " +  '"' + min_bq + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (ignore_rg) then "--ignore-RG" else ""} \
      ~{if defined(incl_flags) then ("--incl-flags " +  '"' + incl_flags + '"') else ""} \
      ~{if defined(excl_flags) then ("--excl-flags " +  '"' + excl_flags + '"') else ""} \
      ~{if (ignore_overlaps) then "--ignore-overlaps" else ""} \
      ~{if (customized_index) then "--customized-index" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if (output_bp) then "--output-BP" else ""} \
      ~{if (output_mq) then "--output-MQ" else ""} \
      ~{if (output_qname) then "--output-QNAME" else ""} \
      ~{if defined(output_extra) then ("--output-extra " +  '"' + output_extra + '"') else ""} \
      ~{if defined(output_sep) then ("--output-sep " +  '"' + output_sep + '"') else ""} \
      ~{if defined(output_empty) then ("--output-empty " +  '"' + output_empty + '"') else ""} \
      ~{if (reverse_del) then "--reverse-del" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.11--h6270b1f_0"
  }
  parameter_meta {
    illumina_one_dot_three: "+      quality is in the Illumina-1.3+ encoding"
    count_orphans: "do not discard anomalous read pairs"
    bam_list: "list of input BAM filenames, one per line"
    no_baq: "disable BAQ (per-Base Alignment Quality)"
    adjust_mq: "adjust mapping quality; recommended:50, disable:0 [0]"
    max_depth: "max per-file depth; avoids excessive memory usage [8000]"
    redo_baq: "recalculate BAQ on the fly, ignore existing BQs"
    fast_a_ref: "faidx indexed reference sequence file"
    exclude_rg: "exclude read groups listed in FILE"
    positions: "skip unlisted positions (chr pos) or regions (BED)"
    min_mq: "skip alignments with mapQ smaller than INT [0]"
    min_bq: "skip bases with baseQ/BAQ smaller than INT [13]"
    region: "region in which pileup is generated"
    ignore_rg: "ignore RG tags (one BAM = one sample)"
    incl_flags: "|INT  required flags: skip reads with mask bits unset []"
    excl_flags: "|INT  filter flags: skip reads with mask bits set\\n[UNMAP,SECONDARY,QCFAIL,DUP]"
    ignore_overlaps: "disable read-pair overlap detection"
    customized_index: "use customized index files"
    write_output_file: "write output to FILE [standard output]"
    output_bp: "output base positions on reads"
    output_mq: "output mapping quality"
    output_qname: "output read names"
    output_extra: "output extra read fields and read tag values"
    output_sep: "set the separator character for tag lists [,]"
    output_empty: "set the no value character for tag lists [*]"
    reverse_del: "use '#' character for deletions on the reverse strand"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    verbosity: "Set level of verbosity"
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}