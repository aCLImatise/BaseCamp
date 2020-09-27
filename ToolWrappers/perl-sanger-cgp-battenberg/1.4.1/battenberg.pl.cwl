class: CommandLineTool
id: battenberg.pl.cwl
inputs:
- id: in_outdir
  doc: -o   Folder to output result to.
  type: Directory
  inputBinding:
    prefix: -outdir
- id: in_reference
  doc: -r   Path to reference genome index file *.fai
  type: boolean
  inputBinding:
    prefix: -reference
- id: in_tumba_m
  doc: "-tb  Path to tumour bam file\n- when '-a' defined sample name"
  type: boolean
  inputBinding:
    prefix: -tumbam
- id: in_normb_am
  doc: "-nb  Path to normal bam file\n- when '-a' defined sample name"
  type: boolean
  inputBinding:
    prefix: -normbam
- id: in_gender
  doc: -ge  Gender, XX, XY or L (see -gl)
  type: boolean
  inputBinding:
    prefix: -gender
- id: in_impute_info
  doc: -e   Location of the impute info file
  type: boolean
  inputBinding:
    prefix: -impute-info
- id: in_thousand_genomes_loc
  doc: Location of the directory containing 1k genomes data
  type: boolean
  inputBinding:
    prefix: -thousand-genomes-loc
- id: in_ignore_contigs_file
  doc: "-ig  File containing contigs to ignore\n- specifically male sex chromosome,\
    \ mitochondria and non primary contigs"
  type: boolean
  inputBinding:
    prefix: -ignore-contigs-file
- id: in_allele_counts
  doc: -a   Provide a tar.gz containing the impute allele counts
  type: boolean
  inputBinding:
    prefix: -allele-counts
- id: in_prob_loci
  doc: -c   Location of prob_loci.txt file [included in release]
  type: boolean
  inputBinding:
    prefix: -prob-loci
- id: in_min_bq_all_count
  doc: -q   Minimum base quality to permit allele counting [20]
  type: boolean
  inputBinding:
    prefix: -min-bq-allcount
- id: in_segmentation_gamma
  doc: -sg  Segmentation gamma [10]
  type: boolean
  inputBinding:
    prefix: -segmentation-gamma
- id: in_phasing_gamma
  doc: -pg  Phasing gamma [1]
  type: boolean
  inputBinding:
    prefix: -phasing-gamma
- id: in_clonality_distance
  doc: -cd  Clonality distance [0]
  type: boolean
  inputBinding:
    prefix: -clonality-distance
- id: in_as_cat_distance
  doc: -ad  ASCAT distance [1]
  type: boolean
  inputBinding:
    prefix: -ascat-distance
- id: in_balanced_threshold
  doc: -bt  Balanced threshold [0.51]
  type: boolean
  inputBinding:
    prefix: -balanced-threshold
- id: in_platform_gamma
  doc: -lg  Platform gamma [1]
  type: boolean
  inputBinding:
    prefix: -platform-gamma
- id: in_min_ploidy
  doc: -mp  Min ploidy [1.6]
  type: boolean
  inputBinding:
    prefix: -min-ploidy
- id: in_max_ploidy
  doc: -xp  Max ploidy [4.8]
  type: boolean
  inputBinding:
    prefix: -max-ploidy
- id: in_min_rho
  doc: -mr  Min Rho [0.1]
  type: boolean
  inputBinding:
    prefix: -min-rho
- id: in_min_goodness_of_fit
  doc: -mg  Min goodness of fit [0.63]
  type: boolean
  inputBinding:
    prefix: -min-goodness-of-fit
- id: in_species
  doc: -rs  Reference species []
  type: boolean
  inputBinding:
    prefix: -species
- id: in_assembly
  doc: -ra  Reference assembly []
  type: boolean
  inputBinding:
    prefix: -assembly
- id: in_protocol
  doc: -pr  Sequencing protocol [WGS]
  type: boolean
  inputBinding:
    prefix: -protocol
- id: in_platform
  doc: -pl  Sequencing platfrom [ILLUMINA]
  type: boolean
  inputBinding:
    prefix: -platform
- id: in_gender_loci
  doc: "-gl  List of gender loci, required when '-ge L' [share/gender/GRCh37d5_Y.loci]\n\
    - these are loci that will not present at all in a female sample"
  type: boolean
  inputBinding:
    prefix: -genderloci
- id: in_threads
  doc: -t   Number of threads allowed on this machine (default 1)
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_logs
  doc: -g   Location to write logs (default is ./logs)
  type: boolean
  inputBinding:
    prefix: -logs
- id: in_process
  doc: Only process this step then exit, optionally set -index
  type: boolean
  inputBinding:
    prefix: -process
- id: in_index
  doc: -i  Optionally restrict '-p' to single job
  type: boolean
  inputBinding:
    prefix: -index
- id: in_jobs
  doc: -j  Declare with -p to determine how many jobs are needed for this step
  type: boolean
  inputBinding:
    prefix: -jobs
- id: in_man
  doc: -m  Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_is_male
  doc: Flag the sample as male, otherwise female is assumed
  type: boolean
  inputBinding:
    prefix: -is-male
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: -o   Folder to output result to.
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- battenberg.pl
