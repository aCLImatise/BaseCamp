version 1.0

task Tepidrefine {
  input {
    Boolean? keep
    File? insertions
    File? deletions
    Int? proc
    String? te
    String? name
    File? conc
    File? split
    String? all_samples
  }
  command <<<
    tepid_refine \
      ~{if (keep) then "--keep" else ""} \
      ~{if defined(insertions) then ("--insertions " +  '"' + insertions + '"') else ""} \
      ~{if defined(deletions) then ("--deletions " +  '"' + deletions + '"') else ""} \
      ~{if defined(proc) then ("--proc " +  '"' + proc + '"') else ""} \
      ~{if defined(te) then ("--te " +  '"' + te + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(conc) then ("--conc " +  '"' + conc + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(all_samples) then ("--all_samples " +  '"' + all_samples + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    keep: "keep all intermediate files"
    insertions: "File containing collapsed TE insertions for all\\nsamples in population"
    deletions: "File containing collapsed TE deletions for all samples\\nin population"
    proc: "number of processors"
    te: "TE annotation bedfile"
    name: "sample name"
    conc: "bam file from bowtie2"
    split: "split reads bam file from yaha"
    all_samples: "List of all sample names\\n"
  }
  output {
    File out_stdout = stdout()
  }
}