version 1.0

task PhenixpyVcf2fasta {
  input {
    Directory? directory
    Array[String] list_vcf_process
    Directory? regexp
    File? out
    String? with_mixtures
    String? column_ns
    String? column_gaps
    String? sample_ns
    String? sample_gaps
    Float? sample_ns_gaps_auto_factor
    File? reference
    Boolean? remove_invariant_npos
    Int? ref_length
    File? include
    File? exclude
    File? with_stats
  }
  command <<<
    phenix_py vcf2fasta \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(list_vcf_process) then ("--input " +  '"' + list_vcf_process + '"') else ""} \
      ~{if defined(regexp) then ("--regexp " +  '"' + regexp + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(with_mixtures) then ("--with-mixtures " +  '"' + with_mixtures + '"') else ""} \
      ~{if defined(column_ns) then ("--column-Ns " +  '"' + column_ns + '"') else ""} \
      ~{if defined(column_gaps) then ("--column-gaps " +  '"' + column_gaps + '"') else ""} \
      ~{if defined(sample_ns) then ("--sample-Ns " +  '"' + sample_ns + '"') else ""} \
      ~{if defined(sample_gaps) then ("--sample-gaps " +  '"' + sample_gaps + '"') else ""} \
      ~{if defined(sample_ns_gaps_auto_factor) then ("--sample-Ns-gaps-auto-factor " +  '"' + sample_ns_gaps_auto_factor + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (remove_invariant_npos) then "--remove-invariant-npos" else ""} \
      ~{if defined(ref_length) then ("--reflength " +  '"' + ref_length + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(with_stats) then ("--with-stats " +  '"' + with_stats + '"') else ""}
  >>>
  parameter_meta {
    directory: "Path to the directory with .vcf files."
    list_vcf_process: "List of VCF files to process."
    regexp: "Regular expression for finding VCFs in a directory."
    out: "Path to the output FASTA file."
    with_mixtures: "Specify this option with a threshold to output\\nmixtures above this threshold."
    column_ns: "Keeps columns with fraction of Ns below specified\\nthreshold."
    column_gaps: "Keeps columns with fraction of Ns below specified\\nthreshold."
    sample_ns: "Keeps samples with fraction of Ns below specified\\nthreshold or put 'auto'.Fraction expressed as fraction\\nof genome. Requires --reflength or --reference."
    sample_gaps: "Keeps samples with fraction of gaps below specified\\nthreshold or put 'auto'.Fraction expressed as fraction\\nof genome. Requires --reflength or --reference."
    sample_ns_gaps_auto_factor: "When using 'auto' option for --sample-gaps or\\n--sample-Ns, remove sample that havegaps or Ns this\\nmany times above the stddev of all samples. [Default:\\n2.0]"
    reference: "If path to reference specified (FASTA), then whole\\ngenome will be written to alignment."
    remove_invariant_npos: "Remove all positions that invariant apart from N\\npositions."
    ref_length: "Length of reference. Either as int or can be worked\\nout from fasta file. Ignored if --reference is used."
    include: "Only include positions in BED file in the FASTA"
    exclude: "Exclude any positions specified in the BED file."
    with_stats: "If a path is specified, then position of the outputed\\nSNPs is stored in this file.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}