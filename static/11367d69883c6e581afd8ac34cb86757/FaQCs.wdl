version 1.0

task FaQCs {
  input {
    Boolean? file_unpaired_reads
    Boolean? file_first_paired
    Boolean? file_second_paired
    Boolean? mode
    Boolean? int_targets_default
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
    Boolean? prefix
    Boolean? stats
    Boolean? path_output_directory
    Boolean? int_run_default
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
      ~{true="-u" false="" file_unpaired_reads} \
      ~{true="-1" false="" file_first_paired} \
      ~{true="-2" false="" file_second_paired} \
      ~{true="--mode" false="" mode} \
      ~{true="-q" false="" int_targets_default} \
      ~{true="--5end" false="" five_end} \
      ~{true="--3end" false="" three_end} \
      ~{true="--adapter" false="" adapter} \
      ~{true="--rate" false="" rate} \
      ~{true="--polyA" false="" polya} \
      ~{true="--artifactFile" false="" artifact_file} \
      ~{true="--min_L" false="" min_l} \
      ~{true="--avg_q" false="" avg_q} \
      ~{true="-n" false="" int_trimmed_read_greater} \
      ~{true="--lc" false="" lc} \
      ~{true="--phiX" false="" phi_x} \
      ~{true="--ascii" false="" ascii} \
      ~{true="--out_ascii" false="" out_ascii} \
      ~{true="--prefix" false="" prefix} \
      ~{true="--stats" false="" stats} \
      ~{true="-d" false="" path_output_directory} \
      ~{true="-t" false="" int_run_default} \
      ~{true="--split_size" false="" split_size} \
      ~{true="--qc_only" false="" qc_only} \
      ~{true="--kmer_rarefaction" false="" km_er_rarefaction} \
      ~{true="-m" false="" int_kmer_rarefaction} \
      ~{true="--subset" false="" subset} \
      ~{true="--discard" false="" discard} \
      ~{true="--substitute" false="" substitute} \
      ~{true="--trim_only" false="" trim_only} \
      ~{true="--replace_to_N_q" false="" replace_to_n_q} \
      ~{true="--5trim_off" false="" five_trim_off} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    file_unpaired_reads: "<File> Unpaired reads"
    file_first_paired: "<File> First paired read file"
    file_second_paired: "<File> Second paired read file"
    mode: "\"HARD\" or \"BWA\" or \"BWA_plus\" (default BWA_plus) BWA trim is NOT A HARD cutoff! (see bwa's bwa_trim_read() function in bwaseqio.c)"
    int_targets_default: "<INT> Targets # as quality level (default 5) for trimming"
    five_end: "<INT> Cut # bp from 5 end before quality trimming/filtering"
    three_end: "<INT> Cut # bp from 3 end before quality trimming/filtering"
    adapter: "<bool> Trim reads with illumina adapter/primers (default: no)"
    rate: "<FLOAT> Mismatch ratio of adapters' length (default: 0.2, allow 20% mismatches)"
    polya: "<bool>  Trim poly A ( > 15 )"
    artifact_file: "<File> additional artifact (adapters/primers/contaminations) reference file in fasta format"
    min_l: "<INT> Trimmed read should have to be at least this minimum length (default:50)"
    avg_q: "<NUM> Average quality cutoff (default:0, no filtering)"
    int_trimmed_read_greater: "<INT> Trimmed read has greater than or equal to this number of continuous base \"N\" will be discarded. (default: 2, \"NN\")"
    lc: "<FLOAT> Low complexity filter ratio, Maximum fraction of mono-/di-nucleotide sequence  (default: 0.85)"
    phi_x: "<bool> Filter phiX reads (slow)"
    ascii: "Encoding type: 33 or 64 or autoCheck (default) Type of ASCII encoding: 33 (standard) or 64 (illumina 1.3+)"
    out_ascii: "Output encoding. (default: 33)"
    prefix: "<TEXT> Output file prefix. (default: QC)"
    stats: "<File> Statistical numbers output file (default: prefix.stats.txt)"
    path_output_directory: "<PATH> Output directory."
    int_run_default: "<INT > # of CPUs to run the script (default:2 )"
    split_size: "<INT> Split the input file into several sub files by sequence number (default: 1000000)"
    qc_only: "<bool> no Filters, no Trimming, report numbers."
    km_er_rarefaction: "<bool> Turn on the kmer calculation. Turn on will slow down ~10 times. (default:Calculation is off.) (meaningless if -subset is too small)"
    int_kmer_rarefaction: "<INT>     kmer for rarefaction curve (range:[2,31], default 31)"
    subset: "<INT>   Use this nubmer x split_size for qc_only and kmer_rarefaction (default: 10,  10x1000000 SE reads, 20x1000000 PE reads)"
    discard: "<bool> Output discarded reads to prefix.discard.fastq (default: 0, not output)"
    substitute: "<bool> Replace \"N\" in the trimmed reads with random base A,T,C ,or G (default: 0, off)"
    trim_only: "<bool> No quality report. Output trimmed reads only."
    replace_to_n_q: "<INT> Replace base G to N when below this quality score (default:0, off)"
    five_trim_off: "<bool> Turn off trimming from 5'end."
    debug: "<bool> Keep intermediate files"
  }
}