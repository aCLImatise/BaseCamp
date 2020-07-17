version 1.0

task TepidRefine {
  input {
    Boolean? keep
    String? insertions
    String? deletions
    String? proc
    String? te
    String? name
    String? conc
    String? split
    String? all_samples
  }
  command <<<
    tepid-refine \
      ~{true="--keep" false="" keep} \
      ~{if defined(insertions) then ("--insertions " +  '"' + insertions + '"') else ""} \
      ~{if defined(deletions) then ("--deletions " +  '"' + deletions + '"') else ""} \
      ~{if defined(proc) then ("--proc " +  '"' + proc + '"') else ""} \
      ~{if defined(te) then ("--te " +  '"' + te + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(conc) then ("--conc " +  '"' + conc + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(all_samples) then ("--all_samples " +  '"' + all_samples + '"') else ""}
  >>>
  parameter_meta {
    keep: "keep all intermediate files"
    insertions: "File containing collapsed TE insertions for all samples in population"
    deletions: "File containing collapsed TE deletions for all samples in population"
    proc: "number of processors"
    te: "TE annotation bedfile"
    name: "sample name"
    conc: "bam file from bowtie2"
    split: "split reads bam file from yaha"
    all_samples: "List of all sample names"
  }
}