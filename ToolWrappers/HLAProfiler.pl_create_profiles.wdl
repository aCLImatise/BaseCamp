version 1.0

task HLAProfilerplCreateProfiles {
  input {
    Boolean? reference
    Directory? output_dir
    Boolean? database_dir
    Boolean? database_name
    Boolean? kraken_path
    Boolean? num_reads
    Boolean? read_length
    Boolean? filter_reads
    Boolean? intermediate_files
    Boolean? max_insert
    Boolean? scale
    Boolean? shape
    Boolean? seed
    Boolean? threads
    String perl
    String hla_profiler_do_tpl
    String create_profile
    String options
  }
  command <<<
    HLAProfiler_pl create_profiles \
      ~{perl} \
      ~{hla_profiler_do_tpl} \
      ~{create_profile} \
      ~{options} \
      ~{if (reference) then "-reference" else ""} \
      ~{if (output_dir) then "-output_dir" else ""} \
      ~{if (database_dir) then "-database_dir" else ""} \
      ~{if (database_name) then "-database_name" else ""} \
      ~{if (kraken_path) then "-kraken_path" else ""} \
      ~{if (num_reads) then "-num_reads" else ""} \
      ~{if (read_length) then "-read_length" else ""} \
      ~{if (filter_reads) then "-filter_reads" else ""} \
      ~{if (intermediate_files) then "-intermediate_files" else ""} \
      ~{if (max_insert) then "-max_insert" else ""} \
      ~{if (scale) then "-scale" else ""} \
      ~{if (shape) then "-shape" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (threads) then "-threads" else ""}
  >>>
  parameter_meta {
    reference: "|r    location of HLA reference fasta file.(required)"
    output_dir: "|o           location of output directory(default:\\\".\\\")"
    database_dir: "|dd        location of database parent directory(default:\\\".\\\")"
    database_name: "|db       name of the HLA database to be created(default:hla)"
    kraken_path: "|kp         base directory of kraken installation. (default:base directory of path returned by `which kraken`)"
    num_reads: "|nr           number of reads to simulated per reference allele for k-mer profile creations.(default:500000)"
    read_length: "|rl         length of reads simulated for k-mer profile. Same as the length of the k-mers in the profile.(default:50)"
    filter_reads: "|f         toggle whether or not to filter reads using in the HLA database when building the k-mer profile.It is STRONGLY recommended to use the default for this setting. Possibile values 0 or 1. (default:1)"
    intermediate_files: "|if  toggles flag to keep intermediate files (default:off)"
    max_insert: "|mi          maximum size of insert (default:1000)"
    scale: "|sc               scale of pareto distribution to determine insert size (default:80)"
    shape: "|sh               shape of pareto distribution to determine insert size (default:0.7)"
    seed: "seed of random number generator for simulation (default:1234)"
    threads: "|c              number of threads to uses for processing.(default:1)"
    perl: ""
    hla_profiler_do_tpl: ""
    create_profile: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}