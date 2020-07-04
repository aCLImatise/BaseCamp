version 1.0

task MiRge2.0Predict {
  input {
    Boolean? two_options_file
    String? directory_outputs_default
    String? mirna_database_default
    String? pb
    String? lib
    String? sp
    String? ps
    String? pr
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
    File? ws
    Int? min_l
    Int? max_l
    Int? cc
    Int? ml
    Int? sl
    Int? olc
    Int? clc
    String? args
  }
  command <<<
    miRge2.0 predict \
      ~{args} \
      ~{true="-s" false="" two_options_file} \
      ~{if defined(directory_outputs_default) then ("-o " +  '"' + directory_outputs_default + '"') else ""} \
      ~{if defined(mirna_database_default) then ("-d " +  '"' + mirna_database_default + '"') else ""} \
      ~{if defined(pb) then ("-pb " +  '"' + pb + '"') else ""} \
      ~{if defined(lib) then ("-lib " +  '"' + lib + '"') else ""} \
      ~{if defined(sp) then ("-sp " +  '"' + sp + '"') else ""} \
      ~{if defined(ps) then ("-ps " +  '"' + ps + '"') else ""} \
      ~{if defined(pr) then ("-pr " +  '"' + pr + '"') else ""} \
      ~{if defined(ex) then ("-ex " +  '"' + ex + '"') else ""} \
      ~{if defined(ad) then ("-ad " +  '"' + ad + '"') else ""} \
      ~{true="-phred64" false="" phred_six_four} \
      ~{true="-spikeIn" false="" spike_in} \
      ~{true="-tcf" false="" tcf} \
      ~{true="-di" false="" di} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{true="-ai" false="" a_i} \
      ~{true="-gff" false="" gff} \
      ~{true="-trf" false="" trf} \
      ~{if defined(ws) then ("-ws " +  '"' + ws + '"') else ""} \
      ~{if defined(min_l) then ("-minl " +  '"' + min_l + '"') else ""} \
      ~{if defined(max_l) then ("-maxl " +  '"' + max_l + '"') else ""} \
      ~{if defined(cc) then ("-cc " +  '"' + cc + '"') else ""} \
      ~{if defined(ml) then ("-ml " +  '"' + ml + '"') else ""} \
      ~{if defined(sl) then ("-sl " +  '"' + sl + '"') else ""} \
      ~{if defined(olc) then ("-olc " +  '"' + olc + '"') else ""} \
      ~{if defined(clc) then ("-clc " +  '"' + clc + '"') else ""}
  >>>
  parameter_meta {
    two_options_file: "[sample <required> [sample <required> ...]] two options: 1. A file where each row represents one sample name; 2. *.fastq *.fastq ... Or *.fastq.gz *.fastq.gz ..."
    directory_outputs_default: "the directory of the outputs (default: current directory)"
    mirna_database_default: "the miRNA database (default: miRBase. miRGeneDB is optional)"
    pb: "the path to the system's bowtie binary"
    lib: "the path to the miRge libraries"
    sp: "the species can be human, mouse, fruitfly, nematode, rat and zebrafish (novel miRNA detection is confined in human and mouse)"
    ps: "the path to the system's samtools binary"
    pr: "the path to the system's rnafold binary"
    ex: "the threshold of the proportion of canonical reads for the miRNAs to determine whether keeping them or not when counting. Users can set it between 0 and 0.5. (default: 0.1)"
    ad: "the adapter need to be removed which could be illumina, ion or a defined sequence (default: none)"
    phred_six_four: "phred64 format(default: 64)"
    spike_in: "switch to annotate spike-ins if the bowtie index files are loacted at the path of bowtie's index files (default: off)"
    tcf: "switch to write trimmed and collapsed fasta file (default: off)"
    di: "switch to calculate of isomirs entropy (default: off)"
    cpu: "the number of processors to use for trimming, qc, and alignment (default: 1)"
    a_i: "switch to calculate of A to I editing (default: off)"
    gff: "switch to output results in gff format (default: off)"
    trf: "switch to analyze tRNA fragment (default: off)"
    ws: "the file containing the overall samples to analysis for novel miRNA prediction. No header, just a list of *.fastq file names in a column. Names of files can be to your choosing (e.g. filestochecknovel.txt)"
    min_l: "the minimum length of the reatined reads for novel miRNA detection (default: 16)"
    max_l: "the maximum length of the reatined reads for novel miRNA detection (default: 25)"
    cc: "the maximum read count of the reatined reads for novel miRNA detection (default: 2)"
    ml: "the maximum number of mapping loci for the retained reads for novel miRNA detection (default: 3)"
    sl: "the seed length when invoking Bowtie for novel miRNA detection (default: 25)"
    olc: "the length of overlapped seqence when joining reads into longer sequences based on the coordinate on the genome for novel miRNA detection (default: 14)"
    clc: "the maximum length of the clustered sequences for novel miRNA detection (default: 30)"
    args: ""
  }
}