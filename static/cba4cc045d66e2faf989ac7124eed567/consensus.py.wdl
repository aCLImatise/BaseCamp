version 1.0

task Consensuspy {
  input {
    File? id__contig
    Boolean? set_unmapped_fsecondary
    Boolean? sort_index
    Int? min_qual
    Int? min_cov
    Float? dominant_frq_thr_sh
    Int? min_len
    Int? trim
    String? id
  }
  command <<<
    consensus_py \
      ~{id} \
      ~{if defined(id__contig) then ("-c " +  '"' + id__contig + '"') else ""} \
      ~{if (set_unmapped_fsecondary) then "-f" else ""} \
      ~{if (sort_index) then "--sortindex" else ""} \
      ~{if defined(min_qual) then ("--minqual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(dominant_frq_thr_sh) then ("--dominant_frq_thrsh " +  '"' + dominant_frq_thr_sh + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""}
  >>>
  parameter_meta {
    id__contig: "ID, --contig REFERENCE ID\\nFocus on a subset of references in the BAM file. Can\\nbe a list of references separated by commas or a FASTA\\nfile (the IDs are used to subset)"
    set_unmapped_fsecondary: "If set unmapped (FUNMAP), secondary (FSECONDARY), qc-\\nfail (FQCFAIL) and duplicate (FDUP) are excluded. If\\nunset ALL reads are considered (bedtools genomecov\\nstyle). Default: unset"
    sort_index: "Sort and index the file"
    min_qual: "Minimum base quality. Bases with quality score lower\\nthan this will be discarded. This is performed BEFORE\\n--mincov. Default: 30"
    min_cov: "Minimum position coverage to perform the polymorphism\\ncalculation. Position with a lower depth of coverage\\nwill be discarded (i.e. considered as zero-coverage\\npositions). This is calculated AFTER --minqual.\\nDefault: 0"
    dominant_frq_thr_sh: "Cutoff for degree of `allele dominance` for a position\\nto be considered polymorphic. Default: 0.8"
    min_len: "Minimum Reference Length for a reference to be\\nconsidered. Default: 0"
    trim: "Trim the reads before computing the consensus. A value\\nof 10:10 means that the first and last 10 positions of\\neach read will be ignored. Default: None\\n"
    id: ""
  }
  output {
    File out_stdout = stdout()
  }
}