version 1.0

task BreadthDepthpy {
  input {
    File? id_contig_idfocus
    Boolean? set_unmapped_fqcfail
    Boolean? sort_index
    Int? min_len
    Int? min_cov
    Int? truncate
    Boolean? combine
    String considered
  }
  command <<<
    breadth_depth_py \
      ~{considered} \
      ~{if defined(id_contig_idfocus) then ("-c " +  '"' + id_contig_idfocus + '"') else ""} \
      ~{if (set_unmapped_fqcfail) then "-f" else ""} \
      ~{if (sort_index) then "--sortindex" else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(truncate) then ("--truncate " +  '"' + truncate + '"') else ""} \
      ~{if (combine) then "--combine" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cmseq:1.0.2--pyh7b7c402_0"
  }
  parameter_meta {
    id_contig_idfocus: "ID, --contig REFERENCE ID\\nFocus on a subset of references in the BAM file. Can\\nbe a list of references separated by commas or a FASTA\\nfile (the IDs are used to subset)"
    set_unmapped_fqcfail: "If set unmapped (FUNMAP), secondary (FSECONDARY), qc-\\nfail (FQCFAIL) and duplicate (FDUP) are excluded. If\\nunset ALL reads are considered (bedtools genomecov\\nstyle). Default: unset"
    sort_index: "Sort and index the file"
    min_len: "Minimum Reference Length for a reference to be"
    min_cov: "Minimum position coverage to perform the polymorphism\\ncalculation. Position with a lower depth of coverage\\nwill be discarded (i.e. considered as zero-coverage\\npositions). This is calculated AFTER --minqual.\\nDefault: 1"
    truncate: "Number of nucleotides that are truncated at either\\ncontigs end before calculating coverage values."
    combine: "Combine all contigs into one giant contig and report\\nit at the end\\n"
    considered: "--minqual MINQUAL     Minimum base quality. Bases with quality score lower"
  }
  output {
    File out_stdout = stdout()
  }
}