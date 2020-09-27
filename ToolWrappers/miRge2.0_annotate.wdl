version 1.0

task MiRge20Annotate {
  input {
    Boolean? two_options_file
    Directory? directory_outputs_default
    String? mirna_database_default
    File? pb
    File? lib
    String? sp
    Float? ex
    String? ad
    Boolean? phred_six_four
    Boolean? spike_in
    Boolean? tcf
    Boolean? di
    Int? cpu
    Boolean? a_i
    Boolean? gff
    Boolean? trf
    String? args
  }
  command <<<
    miRge2_0 annotate \
      ~{args} \
      ~{if (two_options_file) then "-s" else ""} \
      ~{if defined(directory_outputs_default) then ("-o " +  '"' + directory_outputs_default + '"') else ""} \
      ~{if defined(mirna_database_default) then ("-d " +  '"' + mirna_database_default + '"') else ""} \
      ~{if defined(pb) then ("-pb " +  '"' + pb + '"') else ""} \
      ~{if defined(lib) then ("-lib " +  '"' + lib + '"') else ""} \
      ~{if defined(sp) then ("-sp " +  '"' + sp + '"') else ""} \
      ~{if defined(ex) then ("-ex " +  '"' + ex + '"') else ""} \
      ~{if defined(ad) then ("-ad " +  '"' + ad + '"') else ""} \
      ~{if (phred_six_four) then "-phred64" else ""} \
      ~{if (spike_in) then "-spikeIn" else ""} \
      ~{if (tcf) then "-tcf" else ""} \
      ~{if (di) then "-di" else ""} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{if (a_i) then "-ai" else ""} \
      ~{if (gff) then "-gff" else ""} \
      ~{if (trf) then "-trf" else ""}
  >>>
  parameter_meta {
    two_options_file: "[sample <required> [sample <required> ...]]\\ntwo options: 1. A file where each row represents one\\nsample name; 2. *.fastq *.fastq ... Or *.fastq.gz\\n*.fastq.gz ..."
    directory_outputs_default: "the directory of the outputs (default: current\\ndirectory)"
    mirna_database_default: "the miRNA database (default: miRBase. miRGeneDB is\\noptional)"
    pb: "the path to the system's bowtie binary"
    lib: "the path to the miRge libraries"
    sp: "the species can be human, mouse, fruitfly, nematode,\\nrat and zebrafish (novel miRNA detection is confined\\nin human and mouse)"
    ex: "the threshold of the proportion of canonical reads for\\nthe miRNAs to determine whether keeping them or not\\nwhen counting. Users can set it between 0 and 0.5.\\n(default: 0.1)"
    ad: "the adapter need to be removed which could be\\nillumina, ion or a defined sequence (default: none)"
    phred_six_four: "phred64 format (default: 64)"
    spike_in: "switch to annotate spike-ins if the bowtie index files\\nare loacted at the path of bowtie's index files\\n(default: off)"
    tcf: "switch to write trimmed and collapsed fasta file\\n(default: off)"
    di: "switch to calculate of isomirs entropy (default: off)"
    cpu: "the number of processors to use for trimming, qc, and\\nalignment (default: 1)"
    a_i: "switch to calculate of A to I editing (default: off)"
    gff: "switch to output results in gff format (default: off)"
    trf: "switch to analyze tRNA fragment (default: off)"
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}