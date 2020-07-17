version 1.0

task FileDownloader.py {
  input {
    Array[String] protein
    Array[String] cdd
    Array[String] hmm
    Boolean? assembly
    Boolean? assembly_fast_a
    Boolean? no_indexing
    File? out
  }
  command <<<
    file_downloader.py \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if defined(cdd) then ("--cdd " +  '"' + cdd + '"') else ""} \
      ~{if defined(hmm) then ("--hmm " +  '"' + hmm + '"') else ""} \
      ~{true="--assembly" false="" assembly} \
      ~{true="--assembly_fasta" false="" assembly_fast_a} \
      ~{true="--no_indexing" false="" no_indexing} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    protein: "DFAST reference databases. [dfast|bifido|cyanobase|ecoli|lab]"
    cdd: "Preformatted RPS-BLAST database. [Cdd|Cdd_NCBI|Cog|Kog|Pfam|Prk|Smart|Tigr]"
    hmm: "Preformatted RPS-BLAST database. [Pfam|TIGR|dbCAN]"
    assembly: "[ACCESSION [ACCESSION ...]] Accession(s) for NCBI Assembly DB. eg. GCF_000091005.1 GCA_000008865.1"
    assembly_fast_a: "[ACCESSION [ACCESSION ...]] Accession(s) for NCBI Assembly DB. eg. GCF_000091005.1 GCA_000008865.1"
    no_indexing: "Do not perform database indexing"
    out: "Output directory"
  }
}