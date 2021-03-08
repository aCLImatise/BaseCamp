version 1.0

task ChipsSimreads {
  input {
    File? bed_file_peak
    File? file_format_your
    File? fasta_file_reference
    String? prefix_output_files
    Int? num_copies
    Int? num_reads
    Int? read_len
    Boolean? paired
    File? model
    Float? gamma_frag
    Float? spot
    Float? frac
    Boolean? recompute_f
    Float? pcr_rate
    File? read_bam_file
    Int? index_bed_file
    Boolean? no_scale
    Boolean? scale_outliers
    Int? seed
    String? region
    Int? binsize
    Int? thread
    String? sequencer
    Float? sub
    Float? ins
    Float? del
  }
  command <<<
    chips simreads \
      ~{if defined(bed_file_peak) then ("-p " +  '"' + bed_file_peak + '"') else ""} \
      ~{if defined(file_format_your) then ("-t " +  '"' + file_format_your + '"') else ""} \
      ~{if defined(fasta_file_reference) then ("-f " +  '"' + fasta_file_reference + '"') else ""} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(num_copies) then ("--numcopies " +  '"' + num_copies + '"') else ""} \
      ~{if defined(num_reads) then ("--numreads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(read_len) then ("--readlen " +  '"' + read_len + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(gamma_frag) then ("--gamma-frag " +  '"' + gamma_frag + '"') else ""} \
      ~{if defined(spot) then ("--spot " +  '"' + spot + '"') else ""} \
      ~{if defined(frac) then ("--frac " +  '"' + frac + '"') else ""} \
      ~{if (recompute_f) then "--recomputeF" else ""} \
      ~{if defined(pcr_rate) then ("--pcr_rate " +  '"' + pcr_rate + '"') else ""} \
      ~{if defined(read_bam_file) then ("-b " +  '"' + read_bam_file + '"') else ""} \
      ~{if defined(index_bed_file) then ("-c " +  '"' + index_bed_file + '"') else ""} \
      ~{if (no_scale) then "--noscale" else ""} \
      ~{if (scale_outliers) then "--scale-outliers" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(binsize) then ("--binsize " +  '"' + binsize + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(sequencer) then ("--sequencer " +  '"' + sequencer + '"') else ""} \
      ~{if defined(sub) then ("--sub " +  '"' + sub + '"') else ""} \
      ~{if defined(ins) then ("--ins " +  '"' + ins + '"') else ""} \
      ~{if defined(del) then ("--del " +  '"' + del + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chips:2.4--h5ef6573_0"
  }
  parameter_meta {
    bed_file_peak: ": BED file with peak regions"
    file_format_your: ": The file format of your input peak file. Only `homer` or `bed` are supported. You can use -t wce with no BED file to simulate whole cell extract control data."
    fasta_file_reference: ": FASTA file with reference genome"
    prefix_output_files: ": Prefix for output files"
    num_copies: ": Number of copies of the genome to simulate\\nDefault: 100"
    num_reads: ": Number of reads (or read pairs) to simulate\\nDefault: 1000000"
    read_len: ": Read length to generate\\nDefault: 36"
    paired: ": Simulate paired-end reads\\nDefault: false"
    model: ": JSON file with model parameters (e.g. from running learn\\nSetting parameters below overrides anything in the JSON file"
    gamma_frag: ",<float>: Parameters for fragment length distribution (alpha, beta).\\nDefault: 15.67,15.49"
    spot: ": SPOT score (fraction of reads in peaks)\\nDefault: 0.17594"
    frac: ": Fraction of the genome that is bound\\nDefault: 0.03713"
    recompute_f: ": Recompute --frac param based on input peaks."
    pcr_rate: ": The rate of geometric distribution for PCR simulation\\nDefault: 1"
    read_bam_file: ": Read BAM file used to score each peak\\n: Default: None (use the scores from the peak file)"
    index_bed_file: ": The index of the BED file column used to score each peak (index starting from 1). Required if -b not used.\\n: Default: -1"
    no_scale: ": Don't scale peak scores by the max score."
    scale_outliers: ": Set all peaks with scores >2*median score to have binding prob 1. Recommended with real peak files"
    seed: ": the seed for initiating randomization opertions\\nDefault or 0: current time"
    region: ": Only simulate reads from this region chrom:start-end\\nDefault: genome-wide"
    binsize: ": Consider bins of this size when simulating\\n: Default: 100000"
    thread: ": Number of threads used for computing\\n: Default: 1"
    sequencer: ": Sequencing error values\\n: Default: None (no sequencing errors)"
    sub: ": Customized substitution value in sequecing"
    ins: ": Customized insertion value in sequecing"
    del: ": Customized deletion value in sequecing"
  }
  output {
    File out_stdout = stdout()
  }
}