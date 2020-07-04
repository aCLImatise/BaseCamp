version 1.0

task GmcloserBlast.pl {
  input {
    String? long_read
    String? lr_cov
    String? min_q_align
    String? iterate
    String? align_q
    String gm_closer
    String verdot
    String one_dot_five
  }
  command <<<
    gmcloser-blast.pl \
      ~{gm_closer} \
      ~{verdot} \
      ~{one_dot_five} \
      ~{if defined(long_read) then ("--long_read " +  '"' + long_read + '"') else ""} \
      ~{if defined(lr_cov) then ("--lr_cov " +  '"' + lr_cov + '"') else ""} \
      ~{if defined(min_q_align) then ("--min_qalign " +  '"' + min_q_align + '"') else ""} \
      ~{if defined(iterate) then ("--iterate " +  '"' + iterate + '"') else ""} \
      ~{if defined(align_q) then ("--alignq " +  '"' + align_q + '"') else ""}
  >>>
  parameter_meta {
    long_read: "query sequence file is a fasta file of long reads (PacBio reads must be error-corrected) [default: false] (alignment was peformed with blast)"
    lr_cov: "fold coverage of long reads for target scaffolds [default: auto ; automatically calculated by dividing a total length of query by a total length of target]"
    min_q_align: "minimum number of queries that are aligned to either 5'- or 3'-terminus of a target subcontig [default: 1]"
    iterate: "number of iteration [default: 3]"
    align_q: "BLASTn alignment file for query against query [optional]"
    gm_closer: ""
    verdot: ""
    one_dot_five: ""
  }
}