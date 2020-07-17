version 1.0

task PpaniniGeneCaller {
  input {
    String? contig
    String? fast_q
    String? path_for_outputs
    String? output_basename
    String? uniref
    Boolean? resume
    String? threads
    Boolean? one_contig
  }
  command <<<
    ppanini_gene_caller \
      ~{if defined(contig) then ("--contig " +  '"' + contig + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(path_for_outputs) then ("--output " +  '"' + path_for_outputs + '"') else ""} \
      ~{if defined(output_basename) then ("--output-basename " +  '"' + output_basename + '"') else ""} \
      ~{if defined(uniref) then ("--uniref " +  '"' + uniref + '"') else ""} \
      ~{true="--resume" false="" resume} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--one-contig" false="" one_contig}
  >>>
  parameter_meta {
    contig: "contigs file (fna)"
    fast_q: "reads file (fastq)"
    path_for_outputs: "Path for outputs"
    output_basename: "the basename for the output files [DEFAULT: input file basename]"
    uniref: "UniRe90 database"
    resume: "bypass commands if the output files exist"
    threads: "number of threads/processes [DEFAULT: 1]"
    one_contig: "If there is only one contig file for all samples, then this option should be provided"
  }
}