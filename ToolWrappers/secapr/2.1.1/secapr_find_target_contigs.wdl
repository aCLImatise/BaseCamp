version 1.0

task SecaprFindTargetContigs {
  input {
    Directory? contigs
    File? reference
    Directory? directory_store_targetcontigs
    Int? target_length
    Int? min_identity
    Int? seed_length
    Boolean? remove_multilocus_contigs
    Boolean? keep_paralogs
  }
  command <<<
    secapr find_target_contigs \
      ~{if defined(contigs) then ("--contigs " +  '"' + contigs + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(directory_store_targetcontigs) then ("--output " +  '"' + directory_store_targetcontigs + '"') else ""} \
      ~{if defined(target_length) then ("--target_length " +  '"' + target_length + '"') else ""} \
      ~{if defined(min_identity) then ("--min_identity " +  '"' + min_identity + '"') else ""} \
      ~{if defined(seed_length) then ("--seed_length " +  '"' + seed_length + '"') else ""} \
      ~{if (remove_multilocus_contigs) then "--remove_multilocus_contigs" else ""} \
      ~{if (keep_paralogs) then "--keep_paralogs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0"
  }
  parameter_meta {
    contigs: "The directory containing the assembled contigs in\\nfasta format. Alternatively you can provide a\\ndirectory with subfolders containing results of\\nvarious assembly runs (e.g. based on different kmer\\nvalues). In the latter case it is recommended to use\\nthe --keep_paralogs flag, to avoid the majority of\\nloci being discarded as paralogous."
    reference: "The fasta-file containing the reference sequences (one\\nsequence per targeted locus)."
    directory_store_targetcontigs: "The directory in which to store the extracted target\\ncontigs and lastz results."
    target_length: "The required length of the matching sequence stretch\\nbetween contigs and target sequences. This does not\\nhave to be a perfect match but can be adjusted with\\nthe --min_identity flag [default=50]."
    min_identity: "The minimum percent identity required for a match\\n[default=90]."
    seed_length: "Length of initial seed sequence for finding BLAST\\nmatches. The seed has to be a perfect match between a\\ngiven contig and a reference locus (default=11)."
    remove_multilocus_contigs: "Drop those contigs that match multiple exons."
    keep_paralogs: "Keep contigs for loci that are flagged as potentially\\nparalogous (multiple contigs matching same locus). The\\nlongest contig will be selected for these loci.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}