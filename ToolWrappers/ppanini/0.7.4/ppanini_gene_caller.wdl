version 1.0

task PpaniniGeneCaller {
  input {
    File? contig
    File? fast_q
    File? path_for_outputs
    File? output_basename
    Int? uniref
    Boolean? resume
    Int? threads
    Boolean? one_contig
  }
  command <<<
    ppanini_gene_caller \
      ~{if defined(contig) then ("--contig " +  '"' + contig + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(path_for_outputs) then ("--output " +  '"' + path_for_outputs + '"') else ""} \
      ~{if defined(output_basename) then ("--output-basename " +  '"' + output_basename + '"') else ""} \
      ~{if defined(uniref) then ("--uniref " +  '"' + uniref + '"') else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (one_contig) then "--one-contig" else ""}
  >>>
  parameter_meta {
    contig: "contigs file (fna)"
    fast_q: "reads file (fastq)"
    path_for_outputs: "Path for outputs"
    output_basename: "the basename for the output files\\n[DEFAULT: input file basename]"
    uniref: "UniRe90 database"
    resume: "bypass commands if the output files exist"
    threads: "number of threads/processes\\n[DEFAULT: 1]"
    one_contig: "If there is only one contig file for all samples, then this option should be provided"
  }
  output {
    File out_stdout = stdout()
  }
}