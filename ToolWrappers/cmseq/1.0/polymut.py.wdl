version 1.0

task Polymutpy {
  input {
    File? id_contig_idfocus
    Boolean? set_unmapped_fqcfail
    Boolean? sort_index
    Int? min_len
    Int? min_qual
    Int? min_cov
    Float? dominant_frq_thr_sh
    File? gff_file
    String? id
  }
  command <<<
    polymut_py \
      ~{id} \
      ~{if defined(id_contig_idfocus) then ("-c " +  '"' + id_contig_idfocus + '"') else ""} \
      ~{if (set_unmapped_fqcfail) then "-f" else ""} \
      ~{if (sort_index) then "--sortindex" else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_qual) then ("--minqual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(dominant_frq_thr_sh) then ("--dominant_frq_thrsh " +  '"' + dominant_frq_thr_sh + '"') else ""} \
      ~{if defined(gff_file) then ("--gff_file " +  '"' + gff_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    id_contig_idfocus: "ID, --contig REFERENCE ID\\nFocus on a subset of references in the BAM file. Can\\nbe a list of references separated by commas or a FASTA\\nfile (the IDs are used to subset)"
    set_unmapped_fqcfail: "If set unmapped (FUNMAP), secondary (FSECONDARY), qc-\\nfail (FQCFAIL) and duplicate (FDUP) are excluded. If\\nunset ALL reads are considered (bedtools genomecov\\nstyle). Default: unset"
    sort_index: "Sort and index the file"
    min_len: "Minimum Reference Length for a reference to be\\nconsidered. Default: 0"
    min_qual: "Minimum base quality. Bases with quality score lower\\nthan this will be discarded. This is performed BEFORE\\n--mincov. Default: 30"
    min_cov: "Minimum position coverage to perform the polymorphism\\ncalculation. Position with a lower depth of coverage\\nwill be discarded (i.e. considered as zero-coverage\\npositions). This is calculated AFTER --minqual.\\nDefault:1"
    dominant_frq_thr_sh: "Cutoff for degree of `allele dominance` for a position\\nto be considered polymorphic. Default: 0.8"
    gff_file: "GFF file used to extract protein-coding genes"
    id: ""
  }
  output {
    File out_stdout = stdout()
  }
}