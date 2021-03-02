version 1.0

task HLAProfilerplPredict {
  input {
    Boolean? fast_q_one
    Boolean? fast_q_two
    Boolean? database_name
    Boolean? directory_dir
    Boolean? reference
    Boolean? allele_refinement
    Boolean? num_reads
    Boolean? read_length
    Boolean? max_insert
    Boolean? scale
    Boolean? shape
    Boolean? seed
    Boolean? intermediate_files
    Boolean? minimum_reads
    Boolean? threads
    Directory? output_dir
    Boolean? kraken_path
    Boolean? log
    String options
  }
  command <<<
    HLAProfiler_pl predict \
      ~{options} \
      ~{if (fast_q_one) then "-fastq1" else ""} \
      ~{if (fast_q_two) then "-fastq2" else ""} \
      ~{if (database_name) then "-database_name" else ""} \
      ~{if (directory_dir) then "-directory_dir" else ""} \
      ~{if (reference) then "-reference" else ""} \
      ~{if (allele_refinement) then "-allele_refinement" else ""} \
      ~{if (num_reads) then "-num_reads" else ""} \
      ~{if (read_length) then "-read_length" else ""} \
      ~{if (max_insert) then "-max_insert" else ""} \
      ~{if (scale) then "-scale" else ""} \
      ~{if (shape) then "-shape" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (intermediate_files) then "-intermediate_files" else ""} \
      ~{if (minimum_reads) then "-minimum_reads" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if (output_dir) then "-output_dir" else ""} \
      ~{if (kraken_path) then "-kraken_path" else ""} \
      ~{if (log) then "-log" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q_one: "|fq1             location of read1 fastq (required)"
    fast_q_two: "|fq2             location of read2 fastq (required)"
    database_name: "|db       name of HLA database (required)"
    directory_dir: "|dd       name of parent directory of database (required)"
    reference: "|r    reference fa used to create the database (required)"
    allele_refinement: "|ar   Specifies the level to which the predicted alleles are to be refined based on the observed reads (default:all)\\nPossible values:\\nrefine_only     Refines the allelle call by looking predicting the true allele sequence using observed reads and looking for a better match in the reference\\npredict_only    Reports if the observe reads support a novel allele sequence not found in the reference\\nrefineAndPredict        Refines the allele call (-refine_only) and report novel alleles (-novel_only)\\nall             Refines the allele call (-refine_only) and report novel alleles (-novel_only), creates a profile for the refined/novel allele sequence and calculates prediction metrics.\\nnone            Turns off refinement and novel allele prediction."
    num_reads: "|nr           number of reads to simulated per reference allele for k-mer profile creations.(default:500000)"
    read_length: "|rl         length of reads simulated for k-mer profile. Same as the length of the k-mers in the profile.(default:50)"
    max_insert: "|m           maximum size of insert (default:1000)"
    scale: "|sc               scale of pareto distribution to determine insert size (default:80)"
    shape: "|sh               shape of pareto distribution to determine insert size (default:0.7)"
    seed: "|sd                seed of random number generator for simulation (default:1234)"
    intermediate_files: "|if  toggles flag to keep intermediate files (default:off)"
    minimum_reads: "|min      minimum number of reads from a gene before attempting to call HLA types.(default:100)"
    threads: "|c              number of threads (default:1)"
    output_dir: "|od          output directory (default:\\\" .\\\")"
    kraken_path: "|kp         base directory of kraken installation. (default:base directory of path returned by `which kraken`)"
    log: "|l                  name of the prediction log file"
    options: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}