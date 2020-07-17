version 1.0

task HtsboxAbreak {
  input {
    Boolean? assume_input_bam
    Int? exclude_contigs_shorter
    Int? exclude_alignemnts_less
    Int? exclude_alignments_mapq
    Int? filter_calls_min
    Boolean? print_break_points
    Boolean? vcf_output_force
    Boolean? unitig_sv_calling
    File? faidx_indexed_fasta
    Float? exclude_aln_overlapping
    Int? join_alignments_separated
    String hts_cmd
    String a_break
    String un_srt_dots_am
  }
  command <<<
    htsbox abreak \
      ~{hts_cmd} \
      ~{a_break} \
      ~{un_srt_dots_am} \
      ~{true="-b" false="" assume_input_bam} \
      ~{if defined(exclude_contigs_shorter) then ("-l " +  '"' + exclude_contigs_shorter + '"') else ""} \
      ~{if defined(exclude_alignemnts_less) then ("-s " +  '"' + exclude_alignemnts_less + '"') else ""} \
      ~{if defined(exclude_alignments_mapq) then ("-q " +  '"' + exclude_alignments_mapq + '"') else ""} \
      ~{if defined(filter_calls_min) then ("-d " +  '"' + filter_calls_min + '"') else ""} \
      ~{true="-p" false="" print_break_points} \
      ~{true="-c" false="" vcf_output_force} \
      ~{true="-u" false="" unitig_sv_calling} \
      ~{if defined(faidx_indexed_fasta) then ("-f " +  '"' + faidx_indexed_fasta + '"') else ""} \
      ~{if defined(exclude_aln_overlapping) then ("-m " +  '"' + exclude_aln_overlapping + '"') else ""} \
      ~{if defined(join_alignments_separated) then ("-g " +  '"' + join_alignments_separated + '"') else ""}
  >>>
  parameter_meta {
    assume_input_bam: "assume the input is BAM (default is SAM)"
    exclude_contigs_shorter: "exclude contigs shorter than INT [0]"
    exclude_alignemnts_less: "exclude alignemnts with score less than INT [0]"
    exclude_alignments_mapq: "exclude alignments with mapQ below INT [10]"
    filter_calls_min: "filter calls with min flanking depth below INT in VCF [10]"
    print_break_points: "print break points"
    vcf_output_force: "VCF output (force -p)"
    unitig_sv_calling: "unitig SV calling mode (-pq40 -s80)"
    faidx_indexed_fasta: "faidx indexed reference fasta (for -u)"
    exclude_aln_overlapping: "exclude aln overlapping another long aln by FLOAT fraction (effective w/o -p) [0.5]"
    join_alignments_separated: "join alignments separated by a gap shorter than INT bp (effective w/o -p) [500]"
    hts_cmd: ""
    a_break: ""
    un_srt_dots_am: ""
  }
}