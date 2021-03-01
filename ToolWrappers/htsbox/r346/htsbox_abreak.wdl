version 1.0

task HtsboxAbreak {
  input {
    Boolean? assume_input_bam
    Int? exclude_contigs_shorter
    Int? exclude_alignemnts_score
    Int? exclude_alignments_mapq
    Int? filter_calls_min
    Boolean? print_break_points
    Boolean? vcf_output_force
    Boolean? unitig_sv_calling
    File? faidx_indexed_fasta
    Float? aln_overlapping_aln
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
      ~{if (assume_input_bam) then "-b" else ""} \
      ~{if defined(exclude_contigs_shorter) then ("-l " +  '"' + exclude_contigs_shorter + '"') else ""} \
      ~{if defined(exclude_alignemnts_score) then ("-s " +  '"' + exclude_alignemnts_score + '"') else ""} \
      ~{if defined(exclude_alignments_mapq) then ("-q " +  '"' + exclude_alignments_mapq + '"') else ""} \
      ~{if defined(filter_calls_min) then ("-d " +  '"' + filter_calls_min + '"') else ""} \
      ~{if (print_break_points) then "-p" else ""} \
      ~{if (vcf_output_force) then "-c" else ""} \
      ~{if (unitig_sv_calling) then "-u" else ""} \
      ~{if defined(faidx_indexed_fasta) then ("-f " +  '"' + faidx_indexed_fasta + '"') else ""} \
      ~{if defined(aln_overlapping_aln) then ("-m " +  '"' + aln_overlapping_aln + '"') else ""} \
      ~{if defined(join_alignments_separated) then ("-g " +  '"' + join_alignments_separated + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assume_input_bam: "assume the input is BAM (default is SAM)"
    exclude_contigs_shorter: "exclude contigs shorter than INT [0]"
    exclude_alignemnts_score: "exclude alignemnts with score less than INT [0]"
    exclude_alignments_mapq: "exclude alignments with mapQ below INT [10]"
    filter_calls_min: "filter calls with min flanking depth below INT in VCF [10]"
    print_break_points: "print break points"
    vcf_output_force: "VCF output (force -p)"
    unitig_sv_calling: "unitig SV calling mode (-pq40 -s80)"
    faidx_indexed_fasta: "faidx indexed reference fasta (for -u)"
    aln_overlapping_aln: "exclude aln overlapping another long aln by FLOAT fraction (effective w/o -p) [0.5]"
    join_alignments_separated: "join alignments separated by a gap shorter than INT bp (effective w/o -p) [500]"
    hts_cmd: ""
    a_break: ""
    un_srt_dots_am: ""
  }
  output {
    File out_stdout = stdout()
  }
}