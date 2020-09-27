version 1.0

task FaQCs {
  input {
    Boolean? file_unpaired_reads
    Boolean? file_first_paired
    Boolean? file_second_paired
    Boolean? mode
    Boolean? int_targets_quality
    Boolean? five_end
    Boolean? three_end
    Boolean? adapter
    Boolean? rate
    Boolean? polya
    Boolean? artifact_file
    Boolean? min_l
    Boolean? avg_q
    Boolean? int_trimmed_read_greater
    Boolean? lc
    Boolean? phi_x
    Boolean? ascii
    Boolean? out_ascii
    File? prefix
    File? stats
    File? path_output_directory
    Boolean? int_cpus_run
    Boolean? split_size
    Boolean? qc_only
    Boolean? km_er_rarefaction
    Boolean? int_kmer_rarefaction
    Boolean? subset
    Boolean? discard
    Boolean? substitute
    Boolean? trim_only
    Boolean? replace_to_n_q
    Boolean? five_trim_off
    Boolean? debug
  }
  command <<<
    FaQCs \
      ~{if (file_unpaired_reads) then "-u" else ""} \
      ~{if (file_first_paired) then "-1" else ""} \
      ~{if (file_second_paired) then "-2" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (int_targets_quality) then "-q" else ""} \
      ~{if (five_end) then "--5end" else ""} \
      ~{if (three_end) then "--3end" else ""} \
      ~{if (adapter) then "--adapter" else ""} \
      ~{if (rate) then "--rate" else ""} \
      ~{if (polya) then "--polyA" else ""} \
      ~{if (artifact_file) then "--artifactFile" else ""} \
      ~{if (min_l) then "--min_L" else ""} \
      ~{if (avg_q) then "--avg_q" else ""} \
      ~{if (int_trimmed_read_greater) then "-n" else ""} \
      ~{if (lc) then "--lc" else ""} \
      ~{if (phi_x) then "--phiX" else ""} \
      ~{if (ascii) then "--ascii" else ""} \
      ~{if (out_ascii) then "--out_ascii" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (stats) then "--stats" else ""} \
      ~{if (path_output_directory) then "-d" else ""} \
      ~{if (int_cpus_run) then "-t" else ""} \
      ~{if (split_size) then "--split_size" else ""} \
      ~{if (qc_only) then "--qc_only" else ""} \
      ~{if (km_er_rarefaction) then "--kmer_rarefaction" else ""} \
      ~{if (int_kmer_rarefaction) then "-m" else ""} \
      ~{if (subset) then "--subset" else ""} \
      ~{if (discard) then "--discard" else ""} \
      ~{if (substitute) then "--substitute" else ""} \
      ~{if (trim_only) then "--trim_only" else ""} \
      ~{if (replace_to_n_q) then "--replace_to_N_q" else ""} \
      ~{if (five_trim_off) then "--5trim_off" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    file_unpaired_reads: "<File> Unpaired reads"
    file_first_paired: "<File> First paired read file"
    file_second_paired: "<File> Second paired read file"
    mode: "\\\"HARD\\\" or \\\"BWA\\\" or \\\"BWA_plus\\\" (default BWA_plus)\\nBWA trim is NOT A HARD cutoff! (see bwa's bwa_trim_read() function in bwaseqio.c)"
    int_targets_quality: "<INT> Targets # as quality level (default 5) for trimming"
    five_end: "<INT> Cut # bp from 5 end before quality trimming/filtering"
    three_end: "<INT> Cut # bp from 3 end before quality trimming/filtering"
    adapter: "<bool> Trim reads with illumina adapter/primers (default: no)"
    rate: "<FLOAT> Mismatch ratio of adapters' length (default: 0.2, allow 20% mismatches)"
    polya: "<bool>  Trim poly A ( > 15 )"
    artifact_file: "<File> additional artifact (adapters/primers/contaminations) reference file in fasta format"
    min_l: "<INT> Trimmed read should have to be at least this minimum length (default:50)"
    avg_q: "<NUM> Average quality cutoff (default:0, no filtering)"
    int_trimmed_read_greater: "<INT> Trimmed read has greater than or equal to this number of continuous base \\\"N\\\" will be discarded.\\n(default: 2, \\\"NN\\\")"
    lc: "<FLOAT> Low complexity filter ratio, Maximum fraction of mono-/di-nucleotide sequence  (default: 0.85)"
    phi_x: "<bool> Filter phiX reads (slow)"
    ascii: "Encoding type: 33 or 64 or autoCheck (default)\\nType of ASCII encoding: 33 (standard) or 64 (illumina 1.3+)"
    out_ascii: "Output encoding. (default: 33)"
    prefix: "<TEXT> Output file prefix. (default: QC)"
    stats: "<File> Statistical numbers output file (default: prefix.stats.txt)"
    path_output_directory: "<PATH> Output directory."
    int_cpus_run: "<INT > # of CPUs to run the script (default:2 )"
    split_size: "<INT> Split the input file into several sub files by sequence number (default: 1000000)"
    qc_only: "<bool> no Filters, no Trimming, report numbers."
    km_er_rarefaction: "<bool>\\nTurn on the kmer calculation. Turn on will slow down ~10 times. (default:Calculation is off.)\\n(meaningless if -subset is too small)"
    int_kmer_rarefaction: "<INT>     kmer for rarefaction curve (range:[2,31], default 31)"
    subset: "<INT>   Use this nubmer x split_size for qc_only and kmer_rarefaction\\n(default: 10,  10x1000000 SE reads, 20x1000000 PE reads)"
    discard: "<bool> Output discarded reads to prefix.discard.fastq (default: 0, not output)"
    substitute: "<bool> Replace \\\"N\\\" in the trimmed reads with random base A,T,C ,or G (default: 0, off)"
    trim_only: "<bool> No quality report. Output trimmed reads only."
    replace_to_n_q: "<INT> Replace base G to N when below this quality score (default:0, off)"
    five_trim_off: "<bool> Turn off trimming from 5'end."
    debug: "<bool> Keep intermediate files"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
    File out_stats = "${in_stats}"
    File out_path_output_directory = "${in_path_output_directory}"
  }
}