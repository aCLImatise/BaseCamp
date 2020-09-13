version 1.0

task HLAProfilerplPredictOnly {
  input {
    Boolean? counts_directory
    Boolean? reads_directory
    Boolean? profile_directory
    Boolean? sample_name
    Boolean? reference
    Boolean? allele_refinement
    Boolean? kraken_db
    Boolean? kraken_path
    Boolean? minimum_reads
    Directory? output_dir
    Boolean? threads
    String perl
    String hla_profiler_do_tpl
    String predict
    String options
  }
  command <<<
    HLAProfiler_pl predict_only \
      ~{perl} \
      ~{hla_profiler_do_tpl} \
      ~{predict} \
      ~{options} \
      ~{if (counts_directory) then "-counts_directory" else ""} \
      ~{if (reads_directory) then "-reads_directory" else ""} \
      ~{if (profile_directory) then "-profile_directory" else ""} \
      ~{if (sample_name) then "-sample_name" else ""} \
      ~{if (reference) then "-reference" else ""} \
      ~{if (allele_refinement) then "-allele_refinement" else ""} \
      ~{if (kraken_db) then "-kraken_db" else ""} \
      ~{if (kraken_path) then "-kraken_path" else ""} \
      ~{if (minimum_reads) then "-minimum_reads" else ""} \
      ~{if (output_dir) then "-output_dir" else ""} \
      ~{if (threads) then "-threads" else ""}
  >>>
  parameter_meta {
    counts_directory: "|cd            location of directory containing filtered and paired read counts files. To generate these files from fastq files please run HLAProfiler.pl filter followed by HLAProfiler.pl count_reads (required)"
    reads_directory: "|cd             location of directory containing filtered and paired read fastqs.(required)"
    profile_directory: "|sdir         path to directory containing the profile files (required)"
    sample_name: "|sn                 name of the sample. This must perfect match the prefix of each of the read count files. i.e. The sample name for file NA12878.200.B_1.uniq.cnt would be NA12878.200 (required)"
    reference: "|r                    HLA reference fasta. There must also be an allele map file in the sample directory as the reference fa. (required)"
    allele_refinement: "|ar   Specifies the level to which the predicted alleles are to be refined based on the observed reads (default:all)\\nPossible values:\\nrefine_only             Refines the allelle call by looking predicting the true allele sequence using observed reads and looking for a better match in the reference\\npredict_only            Reports if the observe reads support a novel allele sequence not found in the reference\\nrefineAndPredict        Refines the allele call (-refine_only) and report novel alleles (-novel_only)\\nall                     Refines the allele call (-refine_only) and report novel alleles (-novel_only), creates a profile for the refined/novel allele sequence and calculates prediction metrics.\\nnone                    Turns off refinement and novel allele prediction."
    kraken_db: "|db           base directory of kraken database."
    kraken_path: "|kp         base directory of kraken installation. (default:base directory of path returned by `which kraken`)"
    minimum_reads: "|min      minimum number of reads from a gene before attempting to call HLA types.(default:100)"
    output_dir: "|od          output directory(default:'.')"
    threads: "|c              number of threads (default:1)"
    perl: ""
    hla_profiler_do_tpl: ""
    predict: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}