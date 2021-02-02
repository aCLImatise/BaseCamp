version 1.0

task Battenbergpl {
  input {
    Directory? outdir
    Boolean? reference
    Boolean? tumba_m
    Boolean? normb_am
    Boolean? gender
    Boolean? impute_info
    Boolean? thousand_genomes_loc
    Boolean? ignore_contigs_file
    Boolean? allele_counts
    Boolean? prob_loci
    Boolean? min_bq_all_count
    Boolean? segmentation_gamma
    Boolean? phasing_gamma
    Boolean? clonality_distance
    Boolean? as_cat_distance
    Boolean? balanced_threshold
    Boolean? platform_gamma
    Boolean? min_ploidy
    Boolean? max_ploidy
    Boolean? min_rho
    Boolean? min_goodness_of_fit
    Boolean? species
    Boolean? assembly
    Boolean? protocol
    Boolean? platform
    Boolean? gender_loci
    Boolean? threads
    Boolean? logs
    Boolean? process
    Boolean? index
    Boolean? jobs
    Boolean? man
    Boolean? is_male
  }
  command <<<
    battenberg_pl \
      ~{if (outdir) then "-outdir" else ""} \
      ~{if (reference) then "-reference" else ""} \
      ~{if (tumba_m) then "-tumbam" else ""} \
      ~{if (normb_am) then "-normbam" else ""} \
      ~{if (gender) then "-gender" else ""} \
      ~{if (impute_info) then "-impute-info" else ""} \
      ~{if (thousand_genomes_loc) then "-thousand-genomes-loc" else ""} \
      ~{if (ignore_contigs_file) then "-ignore-contigs-file" else ""} \
      ~{if (allele_counts) then "-allele-counts" else ""} \
      ~{if (prob_loci) then "-prob-loci" else ""} \
      ~{if (min_bq_all_count) then "-min-bq-allcount" else ""} \
      ~{if (segmentation_gamma) then "-segmentation-gamma" else ""} \
      ~{if (phasing_gamma) then "-phasing-gamma" else ""} \
      ~{if (clonality_distance) then "-clonality-distance" else ""} \
      ~{if (as_cat_distance) then "-ascat-distance" else ""} \
      ~{if (balanced_threshold) then "-balanced-threshold" else ""} \
      ~{if (platform_gamma) then "-platform-gamma" else ""} \
      ~{if (min_ploidy) then "-min-ploidy" else ""} \
      ~{if (max_ploidy) then "-max-ploidy" else ""} \
      ~{if (min_rho) then "-min-rho" else ""} \
      ~{if (min_goodness_of_fit) then "-min-goodness-of-fit" else ""} \
      ~{if (species) then "-species" else ""} \
      ~{if (assembly) then "-assembly" else ""} \
      ~{if (protocol) then "-protocol" else ""} \
      ~{if (platform) then "-platform" else ""} \
      ~{if (gender_loci) then "-genderloci" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if (logs) then "-logs" else ""} \
      ~{if (process) then "-process" else ""} \
      ~{if (index) then "-index" else ""} \
      ~{if (jobs) then "-jobs" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (is_male) then "-is-male" else ""}
  >>>
  parameter_meta {
    outdir: "-o   Folder to output result to."
    reference: "-r   Path to reference genome index file *.fai"
    tumba_m: "-tb  Path to tumour bam file\\n- when '-a' defined sample name"
    normb_am: "-nb  Path to normal bam file\\n- when '-a' defined sample name"
    gender: "-ge  Gender, XX, XY or L (see -gl)"
    impute_info: "-e   Location of the impute info file"
    thousand_genomes_loc: "Location of the directory containing 1k genomes data"
    ignore_contigs_file: "-ig  File containing contigs to ignore\\n- specifically male sex chromosome, mitochondria and non primary contigs"
    allele_counts: "-a   Provide a tar.gz containing the impute allele counts"
    prob_loci: "-c   Location of prob_loci.txt file [included in release]"
    min_bq_all_count: "-q   Minimum base quality to permit allele counting [20]"
    segmentation_gamma: "-sg  Segmentation gamma [10]"
    phasing_gamma: "-pg  Phasing gamma [1]"
    clonality_distance: "-cd  Clonality distance [0]"
    as_cat_distance: "-ad  ASCAT distance [1]"
    balanced_threshold: "-bt  Balanced threshold [0.51]"
    platform_gamma: "-lg  Platform gamma [1]"
    min_ploidy: "-mp  Min ploidy [1.6]"
    max_ploidy: "-xp  Max ploidy [4.8]"
    min_rho: "-mr  Min Rho [0.1]"
    min_goodness_of_fit: "-mg  Min goodness of fit [0.63]"
    species: "-rs  Reference species []"
    assembly: "-ra  Reference assembly []"
    protocol: "-pr  Sequencing protocol [WGS]"
    platform: "-pl  Sequencing platfrom [ILLUMINA]"
    gender_loci: "-gl  List of gender loci, required when '-ge L' [share/gender/GRCh37d5_Y.loci]\\n- these are loci that will not present at all in a female sample"
    threads: "-t   Number of threads allowed on this machine (default 1)"
    logs: "-g   Location to write logs (default is ./logs)"
    process: "Only process this step then exit, optionally set -index"
    index: "-i  Optionally restrict '-p' to single job"
    jobs: "-j  Declare with -p to determine how many jobs are needed for this step"
    man: "-m  Full documentation."
    is_male: "Flag the sample as male, otherwise female is assumed"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}