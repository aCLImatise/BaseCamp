class: CommandLineTool
id: battenberg.pl.cwl
inputs:
- id: in_outdir
  doc: Folder to output result to.
  type: Directory?
  inputBinding:
    prefix: -outdir
- id: in_reference
  doc: Path to reference genome index file *.fai
  type: boolean?
  inputBinding:
    prefix: -reference
- id: in_tumba_m
  doc: "Path to tumour bam file\n- when '-a' defined sample name"
  type: boolean?
  inputBinding:
    prefix: -tumbam
- id: in_normb_am
  doc: "Path to normal bam file\n- when '-a' defined sample name"
  type: boolean?
  inputBinding:
    prefix: -normbam
- id: in_gender
  doc: Gender, XX, XY or L (see -gl)
  type: boolean?
  inputBinding:
    prefix: -gender
- id: in_impute_info
  doc: Location of the impute info file
  type: boolean?
  inputBinding:
    prefix: -impute-info
- id: in_thousand_genomes_loc
  doc: Location of the directory containing 1k genomes data
  type: boolean?
  inputBinding:
    prefix: -thousand-genomes-loc
- id: in_ignore_contigs_file
  doc: "File containing contigs to ignore\n- specifically male sex chromosome, mitochondria\
    \ and non primary contigs"
  type: boolean?
  inputBinding:
    prefix: -ignore-contigs-file
- id: in_allele_counts
  doc: Provide a tar.gz containing the impute allele counts
  type: boolean?
  inputBinding:
    prefix: -allele-counts
- id: in_prob_loci
  doc: Location of prob_loci.txt file [included in release]
  type: boolean?
  inputBinding:
    prefix: -prob-loci
- id: in_min_bq_all_count
  doc: Minimum base quality to permit allele counting [20]
  type: boolean?
  inputBinding:
    prefix: -min-bq-allcount
- id: in_segmentation_gamma
  doc: Segmentation gamma [10]
  type: boolean?
  inputBinding:
    prefix: -segmentation-gamma
- id: in_phasing_gamma
  doc: Phasing gamma [1]
  type: boolean?
  inputBinding:
    prefix: -phasing-gamma
- id: in_clonality_distance
  doc: Clonality distance [0]
  type: boolean?
  inputBinding:
    prefix: -clonality-distance
- id: in_as_cat_distance
  doc: ASCAT distance [1]
  type: boolean?
  inputBinding:
    prefix: -ascat-distance
- id: in_balanced_threshold
  doc: Balanced threshold [0.51]
  type: boolean?
  inputBinding:
    prefix: -balanced-threshold
- id: in_platform_gamma
  doc: Platform gamma [1]
  type: boolean?
  inputBinding:
    prefix: -platform-gamma
- id: in_min_ploidy
  doc: Min ploidy [1.6]
  type: boolean?
  inputBinding:
    prefix: -min-ploidy
- id: in_max_ploidy
  doc: Max ploidy [4.8]
  type: boolean?
  inputBinding:
    prefix: -max-ploidy
- id: in_min_rho
  doc: Min Rho [0.1]
  type: boolean?
  inputBinding:
    prefix: -min-rho
- id: in_min_goodness_of_fit
  doc: Min goodness of fit [0.63]
  type: boolean?
  inputBinding:
    prefix: -min-goodness-of-fit
- id: in_species
  doc: Reference species []
  type: boolean?
  inputBinding:
    prefix: -species
- id: in_assembly
  doc: Reference assembly []
  type: boolean?
  inputBinding:
    prefix: -assembly
- id: in_protocol
  doc: Sequencing protocol [WGS]
  type: boolean?
  inputBinding:
    prefix: -protocol
- id: in_platform
  doc: Sequencing platfrom [ILLUMINA]
  type: boolean?
  inputBinding:
    prefix: -platform
- id: in_gender_loci
  doc: "List of gender loci, required when '-ge L' [share/gender/GRCh37d5_Y.loci]\n\
    - these are loci that will not present at all in a female sample"
  type: boolean?
  inputBinding:
    prefix: -genderloci
- id: in_threads
  doc: Number of threads allowed on this machine (default 1)
  type: boolean?
  inputBinding:
    prefix: -threads
- id: in_logs
  doc: Location to write logs (default is ./logs)
  type: boolean?
  inputBinding:
    prefix: -logs
- id: in_process
  doc: Only process this step then exit, optionally set -index
  type: boolean?
  inputBinding:
    prefix: -process
- id: in_index
  doc: Optionally restrict '-p' to single job
  type: boolean?
  inputBinding:
    prefix: -index
- id: in_jobs
  doc: Declare with -p to determine how many jobs are needed for this step
  type: boolean?
  inputBinding:
    prefix: -jobs
- id: in_man
  doc: Full documentation.
  type: boolean?
  inputBinding:
    prefix: -man
- id: in_is_male
  doc: Flag the sample as male, otherwise female is assumed
  type: boolean?
  inputBinding:
    prefix: -is-male
- id: in_file_dot
  doc: -ignore-contigs-file
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Folder to output result to.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- battenberg.pl
