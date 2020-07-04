version 1.0

task GenerateTranscriptsGff.py {
  input {
    String? bc_chr_list
    String? est_utr_lens
    String bc_dir
  }
  command <<<
    generate_transcripts_gff.py \
      ~{bc_dir} \
      ~{if defined(bc_chr_list) then ("--BC_chrlist " +  '"' + bc_chr_list + '"') else ""} \
      ~{if defined(est_utr_lens) then ("--est_utr_lens " +  '"' + est_utr_lens + '"') else ""}
  >>>
  parameter_meta {
    bc_chr_list: "A comma separated dictionary of chromosome names from the BioCyc name to the bam name. See the names of chromosomes in bam file using samtools view -H foo.bam."
    est_utr_lens: "Estimated UTRs lengths when there is not data."
    bc_dir: "BioCyc flat-files directory."
  }
}