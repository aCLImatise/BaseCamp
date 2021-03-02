version 1.0

task BcftoolsMpileup {
  input {
    Boolean? illumina_one_dot_three
    Boolean? count_orphans
    File? bam_list
    Boolean? no_baq
    Int? adjust_mq
    Int? max_depth
    Boolean? redo_baq
    File? fast_a_ref
    Boolean? no_reference
    File? read_groups
    Int? min_mq
    Int? min_bq
    String? regions
    File? regions_file
    Boolean? ignore_rg
    Int? incl_flags
    Int? excl_flags
    String? samples
    File? samples_file
    String? targets
    File? targets_file
    Boolean? ignore_overlaps
    String? annotate
    Int? gvc_f
    Boolean? no_version
    File? write_output_file
    String? output_type
    Int? threads
    Int? ext_prob
    Float? gap_frac
    Int? tandem_qual
    Boolean? skip_indels
    Int? max_i_depth
    Int? min_i_reads
    Int? open_prob
    Boolean? per_sample_mf
    String? platforms
    Int in_one_dot_bam
  }
  command <<<
    bcftools mpileup \
      ~{in_one_dot_bam} \
      ~{if (illumina_one_dot_three) then "--illumina1.3" else ""} \
      ~{if (count_orphans) then "--count-orphans" else ""} \
      ~{if defined(bam_list) then ("--bam-list " +  '"' + bam_list + '"') else ""} \
      ~{if (no_baq) then "--no-BAQ" else ""} \
      ~{if defined(adjust_mq) then ("--adjust-MQ " +  '"' + adjust_mq + '"') else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if (redo_baq) then "--redo-BAQ" else ""} \
      ~{if defined(fast_a_ref) then ("--fasta-ref " +  '"' + fast_a_ref + '"') else ""} \
      ~{if (no_reference) then "--no-reference" else ""} \
      ~{if defined(read_groups) then ("--read-groups " +  '"' + read_groups + '"') else ""} \
      ~{if defined(min_mq) then ("--min-MQ " +  '"' + min_mq + '"') else ""} \
      ~{if defined(min_bq) then ("--min-BQ " +  '"' + min_bq + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if (ignore_rg) then "--ignore-RG" else ""} \
      ~{if defined(incl_flags) then ("--incl-flags " +  '"' + incl_flags + '"') else ""} \
      ~{if defined(excl_flags) then ("--excl-flags " +  '"' + excl_flags + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(samples_file) then ("--samples-file " +  '"' + samples_file + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(targets_file) then ("--targets-file " +  '"' + targets_file + '"') else ""} \
      ~{if (ignore_overlaps) then "--ignore-overlaps" else ""} \
      ~{if defined(annotate) then ("--annotate " +  '"' + annotate + '"') else ""} \
      ~{if defined(gvc_f) then ("--gvcf " +  '"' + gvc_f + '"') else ""} \
      ~{if (no_version) then "--no-version" else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(ext_prob) then ("--ext-prob " +  '"' + ext_prob + '"') else ""} \
      ~{if defined(gap_frac) then ("--gap-frac " +  '"' + gap_frac + '"') else ""} \
      ~{if defined(tandem_qual) then ("--tandem-qual " +  '"' + tandem_qual + '"') else ""} \
      ~{if (skip_indels) then "--skip-indels" else ""} \
      ~{if defined(max_i_depth) then ("--max-idepth " +  '"' + max_i_depth + '"') else ""} \
      ~{if defined(min_i_reads) then ("--min-ireads " +  '"' + min_i_reads + '"') else ""} \
      ~{if defined(open_prob) then ("--open-prob " +  '"' + open_prob + '"') else ""} \
      ~{if (per_sample_mf) then "--per-sample-mF" else ""} \
      ~{if defined(platforms) then ("--platforms " +  '"' + platforms + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    illumina_one_dot_three: "+      quality is in the Illumina-1.3+ encoding"
    count_orphans: "do not discard anomalous read pairs"
    bam_list: "list of input BAM filenames, one per line"
    no_baq: "disable BAQ (per-Base Alignment Quality)"
    adjust_mq: "adjust mapping quality; recommended:50, disable:0 [0]"
    max_depth: "max raw per-file depth; avoids excessive memory usage [250]"
    redo_baq: "recalculate BAQ on the fly, ignore existing BQs"
    fast_a_ref: "faidx indexed reference sequence file"
    no_reference: "do not require fasta reference file"
    read_groups: "select or exclude read groups listed in the file"
    min_mq: "skip alignments with mapQ smaller than INT [0]"
    min_bq: "skip bases with baseQ/BAQ smaller than INT [13]"
    regions: "[,...] comma separated list of regions in which pileup is generated"
    regions_file: "restrict to regions listed in a file"
    ignore_rg: "ignore RG tags (one BAM = one sample)"
    incl_flags: "|INT  required flags: skip reads with mask bits unset []"
    excl_flags: "|INT  filter flags: skip reads with mask bits set\\n[UNMAP,SECONDARY,QCFAIL,DUP]"
    samples: "comma separated list of samples to include"
    samples_file: "file of samples to include"
    targets: "[,...] similar to -r but streams rather than index-jumps"
    targets_file: "similar to -R but streams rather than index-jumps"
    ignore_overlaps: "disable read-pair overlap detection"
    annotate: "optional tags to output; '?' to list []"
    gvc_f: "[,...]    group non-variant sites into gVCF blocks according\\nto minimum per-sample DP"
    no_version: "do not append version and command line to the header"
    write_output_file: "write output to FILE [standard output]"
    output_type: "'b' compressed BCF; 'u' uncompressed BCF;\\n'z' compressed VCF; 'v' uncompressed VCF [v]"
    threads: "use multithreading with INT worker threads [0]"
    ext_prob: "Phred-scaled gap extension seq error probability [20]"
    gap_frac: "minimum fraction of gapped reads [0.002]"
    tandem_qual: "coefficient for homopolymer errors [100]"
    skip_indels: "do not perform indel calling"
    max_i_depth: "maximum per-file depth for INDEL calling [250]"
    min_i_reads: "minimum number gapped reads for indel candidates [1]"
    open_prob: "Phred-scaled gap open seq error probability [40]"
    per_sample_mf: "apply -m and -F per-sample for increased sensitivity"
    platforms: "comma separated list of platforms for indels [all]"
    in_one_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_output_file = "${in_write_output_file}"
  }
}