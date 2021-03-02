version 1.0

task LoadGenomepl {
  input {
    Int? name
    File? fast_a
    File? gtf
    Boolean? org
    Boolean? force
    String? promoters
    String? id
    String? version
    Boolean? gid
    Boolean? tid
    File? ensembl_repeats
    String required_parameters_dot_dot_dot
  }
  command <<<
    loadGenome_pl \
      ~{required_parameters_dot_dot_dot} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""} \
      ~{if (org) then "-org" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if defined(promoters) then ("-promoters " +  '"' + promoters + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""} \
      ~{if (gid) then "-gid" else ""} \
      ~{if (tid) then "-tid" else ""} \
      ~{if defined(ensembl_repeats) then ("-ensemblRepeats " +  '"' + ensembl_repeats + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "(i.e. hg19, tair10, etc.)"
    fast_a: "(Single genome sequence, preferrabley soft masked, unzipped)"
    gtf: "(Transcript annotation in gtf format, -gff/-gff3 to use them)\\n(Always best to use a gtf file whenever possible, gffs can be organized differently...)"
    org: "<organism name, ok to use 'null'>"
    force: "(Overwrite any existing genome with the same name)"
    promoters: "(Create promoter set with genome and gtf files)"
    id: "(options: gene, refseq, unigene, ensembl, or custom, default: custom)"
    version: "(Assign version, versions starting with 'v' are managed\\nby the configureHomer.pl script and my be overwritten, default: custom)"
    gid: "(Use gene_id instead of transcript_id to identify the transcripts from GTF files)"
    tid: "(Use transcript_id instead of gene_id to identify the transcripts from GTF files, default)"
    ensembl_repeats: "(gff3 annotations from ensembl usually have repeat definitions too)"
    required_parameters_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}