version 1.0

task BreadthDepthpy {
  input {
    File? id__contig
    Boolean? set_unmapped_fsecondary
    Boolean? sort_index
    Int? min_len
    Int? min_cov
    Int? truncate
    String considered
  }
  command <<<
    breadth_depth_py \
      ~{considered} \
      ~{if defined(id__contig) then ("-c " +  '"' + id__contig + '"') else ""} \
      ~{if (set_unmapped_fsecondary) then "-f" else ""} \
      ~{if (sort_index) then "--sortindex" else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(truncate) then ("--truncate " +  '"' + truncate + '"') else ""}
  >>>
  parameter_meta {
    id__contig: "ID, --contig REFERENCE ID\\nFocus on a subset of references in the BAM file. Can\\nbe a list of references separated by commas or a FASTA\\nfile (the IDs are used to subset)"
    set_unmapped_fsecondary: "If set unmapped (FUNMAP), secondary (FSECONDARY), qc-\\nfail (FQCFAIL) and duplicate (FDUP) are excluded. If\\nunset ALL reads are considered (bedtools genomecov\\nstyle). Default: unset"
    sort_index: "Sort and index the file"
    min_len: "Minimum Reference Length for a reference to be"
    min_cov: "Minimum position coverage to perform the polymorphism\\ncalculation. Position with a lower depth of coverage\\nwill be discarded (i.e. considered as zero-coverage\\npositions). This is calculated AFTER --minqual.\\nDefault: 1"
    truncate: "Number of nucleotides that are truncated at either\\ncontigs end before calculating coverage values.\\n"
    considered: "--minqual MINQUAL     Minimum base quality. Bases with quality score lower"
  }
  output {
    File out_stdout = stdout()
  }
}