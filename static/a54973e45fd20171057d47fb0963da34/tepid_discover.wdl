version 1.0

task Tepiddiscover {
  input {
    Boolean? keep
    Boolean? deletions
    Boolean? insertions
    Boolean? strict
    File? mask
    File? discordant
    Int? proc
    String? name
    File? conc
    File? split
    String? te
    Boolean? se
  }
  command <<<
    tepid_discover \
      ~{if (keep) then "--keep" else ""} \
      ~{if (deletions) then "--deletions" else ""} \
      ~{if (insertions) then "--insertions" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(discordant) then ("--discordant " +  '"' + discordant + '"') else ""} \
      ~{if defined(proc) then ("--proc " +  '"' + proc + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(conc) then ("--conc " +  '"' + conc + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(te) then ("--te " +  '"' + te + '"') else ""} \
      ~{if (se) then "--se" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    keep: "keep all intermediate files"
    deletions: "find deletions only"
    insertions: "find insertions only"
    strict: "Report high-confidence variants only"
    mask: "Mask chromosomes in comma separated list or file"
    discordant: "Supply discordant reads bam file"
    proc: "number of processors"
    name: "sample name"
    conc: "bam file from bowtie2"
    split: "split reads bam file from yaha"
    te: "TE annotation bedfile"
    se: "Run in single-end mode"
  }
  output {
    File out_stdout = stdout()
  }
}