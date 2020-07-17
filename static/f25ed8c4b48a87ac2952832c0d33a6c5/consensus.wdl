version 1.0

task Consensus.py {
  input {
    String? id__contig
    Boolean? set_unmapped_funmap
    Boolean? sort_index
    Int? min_qual
    Int? min_cov
    String? dominant_frq_thr_sh
    Int? min_len
    String? trim
    String bam_file
  }
  command <<<
    consensus.py \
      ~{bam_file} \
      ~{if defined(id__contig) then ("-c " +  '"' + id__contig + '"') else ""} \
      ~{true="-f" false="" set_unmapped_funmap} \
      ~{true="--sortindex" false="" sort_index} \
      ~{if defined(min_qual) then ("--minqual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(dominant_frq_thr_sh) then ("--dominant_frq_thrsh " +  '"' + dominant_frq_thr_sh + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""}
  >>>
  parameter_meta {
    id__contig: "ID, --contig REFERENCE ID Focus on a subset of references in the BAM file. Can be a list of references separated by commas or a FASTA file (the IDs are used to subset)"
    set_unmapped_funmap: "If set unmapped (FUNMAP), secondary (FSECONDARY), qc- fail (FQCFAIL) and duplicate (FDUP) are excluded. If unset ALL reads are considered (bedtools genomecov style). Default: unset"
    sort_index: "Sort and index the file"
    min_qual: "Minimum base quality. Bases with quality score lower than this will be discarded. This is performed BEFORE --mincov. Default: 30"
    min_cov: "Minimum position coverage to perform the polymorphism calculation. Position with a lower depth of coverage will be discarded (i.e. considered as zero-coverage positions). This is calculated AFTER --minqual. Default: 0"
    dominant_frq_thr_sh: "Cutoff for degree of `allele dominance` for a position to be considered polymorphic. Default: 0.8"
    min_len: "Minimum Reference Length for a reference to be considered. Default: 0"
    trim: "Trim the reads before computing the consensus. A value of 10:10 means that the first and last 10 positions of each read will be ignored. Default: None"
    bam_file: "The file on which to operate"
  }
}