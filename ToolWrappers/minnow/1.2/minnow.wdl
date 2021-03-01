version 1.0

task Minnow {
  input {
    Boolean? a_levin_mode
    Boolean? splatter_mode
    Boolean? normal_mode
    Boolean? test_uniq_ness
    Boolean? reverse_uniq_ness
    Boolean? use_weibull
    Int? num_of_doublets
    File? mat_dir
    File? outdir
    Int? num_molfile
    Boolean? gen_code
    File? ref_file
    Int? g_two_t
    String? r_spd
    File? bfh
    File? gene_prob
    File? count_prob
    Boolean? velocity
    Boolean? binary
    Boolean? dbg
    Boolean? no_dump
    File? gfa
    Directory? dup_counts
    Boolean? use_whitelist
    Boolean? generate_noisy_cells
    Boolean? polya
    File? polya_site
    File? poly_a_fraction
    String? sample_cells
    File? intron_file
    File? genome
    Int? number_of_cells
    Int? number_of_transcripts
    Int? clusters
    Int? pcr
    Int? pcr_model_six
    String? error_rate
    Int? num_threads
    Directory? eq_class_dir
    File? cluster
  }
  command <<<
    minnow \
      ~{if (a_levin_mode) then "--alevin-mode" else ""} \
      ~{if (splatter_mode) then "--splatter-mode" else ""} \
      ~{if (normal_mode) then "--normal-mode" else ""} \
      ~{if (test_uniq_ness) then "--testUniqness" else ""} \
      ~{if (reverse_uniq_ness) then "--reverseUniqness" else ""} \
      ~{if (use_weibull) then "--useWeibull" else ""} \
      ~{if defined(num_of_doublets) then ("--numOfDoublets " +  '"' + num_of_doublets + '"') else ""} \
      ~{if defined(mat_dir) then ("--matdir " +  '"' + mat_dir + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(num_molfile) then ("--numMolFile " +  '"' + num_molfile + '"') else ""} \
      ~{if (gen_code) then "--gencode" else ""} \
      ~{if defined(ref_file) then ("--reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(g_two_t) then ("--g2t " +  '"' + g_two_t + '"') else ""} \
      ~{if defined(r_spd) then ("--rspd " +  '"' + r_spd + '"') else ""} \
      ~{if defined(bfh) then ("--bfh " +  '"' + bfh + '"') else ""} \
      ~{if defined(gene_prob) then ("--geneProb " +  '"' + gene_prob + '"') else ""} \
      ~{if defined(count_prob) then ("--countProb " +  '"' + count_prob + '"') else ""} \
      ~{if (velocity) then "--velocity" else ""} \
      ~{if (binary) then "--binary" else ""} \
      ~{if (dbg) then "--dbg" else ""} \
      ~{if (no_dump) then "--noDump" else ""} \
      ~{if defined(gfa) then ("--gfa " +  '"' + gfa + '"') else ""} \
      ~{if defined(dup_counts) then ("--dupCounts " +  '"' + dup_counts + '"') else ""} \
      ~{if (use_whitelist) then "--useWhiteList" else ""} \
      ~{if (generate_noisy_cells) then "--generateNoisyCells" else ""} \
      ~{if (polya) then "--polyA" else ""} \
      ~{if defined(polya_site) then ("--polyAsite " +  '"' + polya_site + '"') else ""} \
      ~{if defined(poly_a_fraction) then ("--polyAfraction " +  '"' + poly_a_fraction + '"') else ""} \
      ~{if defined(sample_cells) then ("--sampleCells " +  '"' + sample_cells + '"') else ""} \
      ~{if defined(intron_file) then ("--intronfile " +  '"' + intron_file + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(number_of_cells) then ("--numberOfCells " +  '"' + number_of_cells + '"') else ""} \
      ~{if defined(number_of_transcripts) then ("--numberOfTranscripts " +  '"' + number_of_transcripts + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(pcr) then ("--PCR " +  '"' + pcr + '"') else ""} \
      ~{if defined(pcr_model_six) then ("--PCRmodel6 " +  '"' + pcr_model_six + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(eq_class_dir) then ("--eqClassDir " +  '"' + eq_class_dir + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a_levin_mode: "The program would assume that the input matrix is obtained from Alevin"
    splatter_mode: "matrix file is obtained from running splatter"
    normal_mode: "user provided matrix"
    test_uniq_ness: "matrix file is obtained from running splatter"
    reverse_uniq_ness: "matrix file is obtained from running splatter"
    use_weibull: "matrix file is obtained from running splatter"
    num_of_doublets: "Number of doublets to be generated"
    mat_dir: "directory with matrix file/ if this is a file instead of a dir"
    outdir: "the simulated reads will be written here"
    num_molfile: "Number of molecules generated from each cell"
    gen_code: "gencode reference has | separator"
    ref_file: "transcriptome reference file (assumed from fasta file)"
    g_two_t: "tab separated list of Gene to Transcirpt mapping"
    r_spd: "tab separated read start position distribution"
    bfh: "BFH file"
    gene_prob: "Gene level probability file (TSV)"
    count_prob: "global scale count probability file"
    velocity: "In velocity mode we generate reads from exon-exon junction"
    binary: "If the matrix file is written in binary"
    dbg: "Use the provided GFA file and BFH"
    no_dump: "will use the model file made"
    gfa: "gfa file for contigs"
    dup_counts: "for making minnow read the dup counts TSV filtered_cb_frequency.txt in the same folder"
    use_whitelist: "Flag for making minnow read the dup counts TSV filtered_cb_frequency.txt in the same folder"
    generate_noisy_cells: "Flag for making minnow read the dup counts TSV filtered_cb_frequency.txt in the same folder"
    polya: "Flag to sample with polyA sites this should accompany --polyAsite and --polyAfraction"
    polya_site: "Fasta file with polyA sites"
    poly_a_fraction: "File with polyA site fraction"
    sample_cells: "sample this many cells from the set of all cells"
    intron_file: "Intron bed file which contains the intron boundaries per transcript"
    genome: "genome FASTA file"
    number_of_cells: "Number of cells required for simulation (default = 10)"
    number_of_transcripts: "Number of transcripts for simulation (default = 100)"
    clusters: "Gene cluster file (should be ported with --dbg)"
    pcr: "Maximum cycles to repeat PCR (default = 5)"
    pcr_model_six: "from Best, Katharine et al. (2015)"
    error_rate: "error rate to be introduced while producing sequences"
    num_threads: "number of threads to parallelize the process"
    eq_class_dir: "directory containing relevent files produced by the python script"
    cluster: "Optional cluster file to model cluster based histogram"
  }
  output {
    File out_stdout = stdout()
  }
}