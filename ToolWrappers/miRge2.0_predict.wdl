version 1.0

task MiRge20Predict {
  input {
    Boolean? two_options_file
    Directory? directory_outputs_default
    String? mirna_database_default
    File? pb
    File? lib
    String? sp
    File? ps
    File? pr
    Float? ex
    String? ad
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
    miRge2_0 predict \
      ~{args} \
      ~{if (two_options_file) then "-s" else ""} \
      ~{if defined(directory_outputs_default) then ("-o " +  '"' + directory_outputs_default + '"') else ""} \
      ~{if defined(mirna_database_default) then ("-d " +  '"' + mirna_database_default + '"') else ""} \
      ~{if defined(pb) then ("-pb " +  '"' + pb + '"') else ""} \
      ~{if defined(lib) then ("-lib " +  '"' + lib + '"') else ""} \
      ~{if defined(sp) then ("-sp " +  '"' + sp + '"') else ""} \
      ~{if defined(ps) then ("-ps " +  '"' + ps + '"') else ""} \
      ~{if defined(pr) then ("-pr " +  '"' + pr + '"') else ""} \
      ~{if defined(ex) then ("-ex " +  '"' + ex + '"') else ""} \
      ~{if defined(ad) then ("-ad " +  '"' + ad + '"') else ""} \
      ~{if (spike_in) then "-spikeIn" else ""} \
      ~{if (tcf) then "-tcf" else ""} \
      ~{if (di) then "-di" else ""} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{if (a_i) then "-ai" else ""} \
      ~{if (gff) then "-gff" else ""} \
      ~{if (trf) then "-trf" else ""} \
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
    two_options_file: "[sample <required> [sample <required> ...]]\\ntwo options: 1. A file where each row represents one\\nsample name; 2. *.fastq *.fastq ... Or *.fastq.gz\\n*.fastq.gz ..."
    directory_outputs_default: "the directory of the outputs (default: current\\ndirectory)"
    mirna_database_default: "the miRNA database (default: miRBase. miRGeneDB is\\noptional)"
    pb: "the path to the system's bowtie binary"
    lib: "the path to the miRge libraries"
    sp: "the species can be human, mouse, fruitfly, nematode,\\nrat and zebrafish (novel miRNA detection is confined\\nin human and mouse)"
    ps: "the path to the system's samtools binary"
    pr: "the path to the system's rnafold binary"
    ex: "the threshold of the proportion of canonical reads for\\nthe miRNAs to determine whether keeping them or not\\nwhen counting. Users can set it between 0 and 0.5.\\n(default: 0.1)"
    ad: "the adapter need to be removed which could be\\nillumina, ion or a defined sequence (default: none)"
    spike_in: "switch to annotate spike-ins if the bowtie index files\\nare loacted at the path of bowtie's index files\\n(default: off)"
    tcf: "switch to write trimmed and collapsed fasta file\\n(default: off)"
    di: "switch to calculate of isomirs entropy (default: off)"
    cpu: "the number of processors to use for trimming, qc, and\\nalignment (default: 1)"
    a_i: "switch to calculate of A to I editing (default: off)"
    gff: "switch to output results in gff format (default: off)"
    trf: "switch to analyze tRNA fragment (default: off)"
    ws: "the file containing the overall samples to analysis\\nfor novel miRNA prediction. No header, just a list of\\n*.fastq file names in a column. Names of files can be\\nto your choosing (e.g. filestochecknovel.txt)"
    min_l: "the minimum length of the reatined reads for novel\\nmiRNA detection (default: 16)"
    max_l: "the maximum length of the reatined reads for novel\\nmiRNA detection (default: 25)"
    cc: "the maximum read count of the reatined reads for novel\\nmiRNA detection (default: 2)"
    ml: "the maximum number of mapping loci for the retained\\nreads for novel miRNA detection (default: 3)"
    sl: "the seed length when invoking Bowtie for novel miRNA\\ndetection (default: 25)"
    olc: "the length of overlapped seqence when joining reads\\ninto longer sequences based on the coordinate on the\\ngenome for novel miRNA detection (default: 14)"
    clc: "the maximum length of the clustered sequences for\\nnovel miRNA detection (default: 30)"
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}