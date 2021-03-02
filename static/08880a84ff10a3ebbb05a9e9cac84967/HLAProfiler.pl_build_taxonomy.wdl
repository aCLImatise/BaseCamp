version 1.0

task HLAProfilerplBuildTaxonomy {
  input {
    Boolean? transcripts
    Boolean? transcript_gtf
    Boolean? exclusion_bed
    Boolean? reference
    Boolean? output_dir
    Boolean? database_name
    Boolean? kraken_path
    Boolean? k_mer
    Boolean? minimizer
    Boolean? threads
    String options
  }
  command <<<
    HLAProfiler_pl build_taxonomy \
      ~{options} \
      ~{if (transcripts) then "-transcripts" else ""} \
      ~{if (transcript_gtf) then "-transcript_gtf" else ""} \
      ~{if (exclusion_bed) then "-exclusion_bed" else ""} \
      ~{if (reference) then "-reference" else ""} \
      ~{if (output_dir) then "-output_dir" else ""} \
      ~{if (database_name) then "-database_name" else ""} \
      ~{if (kraken_path) then "-kraken_path" else ""} \
      ~{if (k_mer) then "-k_mer" else ""} \
      ~{if (minimizer) then "-minimizer" else ""} \
      ~{if (threads) then "-threads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    transcripts: "|t          location of fasta file containing transcripts. Currently only GENCODE transcripts are supported.(required)"
    transcript_gtf: "|g       location of gtf file containing transcripts corresponding to the -transcripts option. Currently only GENCODE transcripts are supported.(required)"
    exclusion_bed: "|e        location of bed file containing the coordinated any regions to be excluded from the distractome. i.e. HLA region.(required)"
    reference: "|r            location of fasta file containing HLA reference. IPD-IMGT/HLA reference recommended.(required)"
    output_dir: "|o           location of database directory(default:\\\".\\\")"
    database_name: "|db       name of the HLA database to be created(default:hla)"
    kraken_path: "|kp         base directory of kraken installation. (default:base directory of path returned by `which kraken`)"
    k_mer: "|k                size of the k-mer used to create database.(default:31)"
    minimizer: "|m            size of the k-mer minimizer used to crate database.(default:13)"
    threads: "|c              number of threads to uses for processing.(default:1)"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}