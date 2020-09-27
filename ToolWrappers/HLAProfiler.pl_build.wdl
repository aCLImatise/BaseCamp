version 1.0

task HLAProfilerplBuild {
  input {
    Boolean? transcripts
    Boolean? transcript_gtf
    Boolean? exclusion_bed
    Boolean? reference
    Boolean? cwd
    Directory? output_dir
    Boolean? database_name
    Boolean? kraken_path
    Boolean? k_mer
    Boolean? minimizer
    Boolean? num_reads
    Boolean? read_length
    Boolean? max_insert
    Boolean? scale
    Boolean? shape
    Boolean? seed
    Boolean? filter_reads
    Boolean? intermediate_files
    Boolean? threads
    String options
  }
  command <<<
    HLAProfiler_pl build \
      ~{options} \
      ~{if (transcripts) then "-transcripts" else ""} \
      ~{if (transcript_gtf) then "-transcript_gtf" else ""} \
      ~{if (exclusion_bed) then "-exclusion_bed" else ""} \
      ~{if (reference) then "-reference" else ""} \
      ~{if (cwd) then "-cwd" else ""} \
      ~{if (output_dir) then "-output_dir" else ""} \
      ~{if (database_name) then "-database_name" else ""} \
      ~{if (kraken_path) then "-kraken_path" else ""} \
      ~{if (k_mer) then "-k_mer" else ""} \
      ~{if (minimizer) then "-minimizer" else ""} \
      ~{if (num_reads) then "-num_reads" else ""} \
      ~{if (read_length) then "-read_length" else ""} \
      ~{if (max_insert) then "-max_insert" else ""} \
      ~{if (scale) then "-scale" else ""} \
      ~{if (shape) then "-shape" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (filter_reads) then "-filter_reads" else ""} \
      ~{if (intermediate_files) then "-intermediate_files" else ""} \
      ~{if (threads) then "-threads" else ""}
  >>>
  parameter_meta {
    transcripts: "|t          location of fasta file containing transcripts. Currently only GENCODE transcripts are supported.(required)"
    transcript_gtf: "|g       location of gtf file containing transcripts corresponding to the -transcripts option. Currently only GENCODE transcripts are supported.(required)"
    exclusion_bed: "|e        location of bed file containing the coordinated any regions to be excluded from the distractome. i.e. HLA region.(required)"
    reference: "|r            location of fasta file containing HLA reference. IPD-IMGT/HLA reference recommended.(required)"
    cwd: "File containing the names of common and well-documented alleles. This file can be blank but must be specified.(required)"
    output_dir: "|o           location of output directory(default:\\\".\\\")"
    database_name: "|db       name of the HLA database to be created(default:hla)"
    kraken_path: "|kp base directory of kraken installation. (default:base directory of path returned by `which kraken`)"
    k_mer: "|k                size of the k-mer used to create database.(default:31)"
    minimizer: "|mi           size of the k-mer minimizer used to crate database.(default:13)"
    num_reads: "|nr           number of reads to simulated per reference allele for k-mer profile creations.(default:500000)"
    read_length: "|rl         length of reads simulated for k-mer profile. Same as the length of the k-mers in the profile.(default:50)"
    max_insert: "|m           maximum size of insert (default:1000)"
    scale: "|sc               scale of pareto distribution to determine insert size (default:80)"
    shape: "|sh               shape of pareto distribution to determine insert size (default:0.7)"
    seed: "|sd                seed of random number generator for simulation (default:1234)"
    filter_reads: "|f         toggle whether or not to filter reads using in the HLA database when building the k-mer profile.It is STRONGLY recommended to use the default for this setting. Possibile values 0 or 1. (default:1)"
    intermediate_files: "|if  toggles flag to keep intermediate files (default:off)"
    threads: "|c      number of threads to uses for processing.(default:1)"
    options: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}