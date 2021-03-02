class: CommandLineTool
id: run_discoSnp++_ML.sh.cwl
inputs:
- id: in_f_of
  doc: "<file name of a file of file(s)>\nThe input read files indicated in a file\
    \ of file(s)\nExample: -r bank.fof with bank.fof containing the two lines\ndata_sample/reads_sequence1.fasta\n\
    data_sample/reads_sequence2.fasta.gz"
  type: boolean?
  inputBinding:
    prefix: --fof
- id: in_path_compiled_dskascii
  doc: path to compiled dsk (directory containing compiled dsk and dsk2ascii)
  type: File?
  inputBinding:
    prefix: -f
- id: in_k_size
  doc: "<int value>\nSet the length of used kmers. Must fit the compiled value.\n\
    Default=31"
  type: long?
  inputBinding:
    prefix: --k_size
- id: in_min_coverage
  doc: "<int value>\nSet the minimal coverage per read set: Used by kissnp2 (don't\
    \ use kmers with lower coverage) and kissreads (read coherency threshold).\nThis\
    \ coverage can be automatically detected per read set (in this case use \"auto\"\
    \ or specified per read set, see the documentation.\nDefault=3"
  type: long?
  inputBinding:
    prefix: --min_coverage
- id: in_max_coverage
  doc: "<int value in 0, 1 or 2>\nSet the maximal coverage for each read set: Used\
    \ by kissnp2 (don't use kmers with higher coverage).\nDefault=2^31-1"
  type: long?
  inputBinding:
    prefix: --max_coverage
- id: in_branching
  doc: "0: forbid variants for which any of the two paths is branching (high precision,\
    \ lowers the recall in complex genomes).\nDefault value\n1: (smart branching)\
    \ forbid SNPs for which the two paths are branching (e.g. the two paths can be\
    \ created either with a 'A' or a 'C' at the same position\n2: No limitation on\
    \ branching (lowers the precision, high recall)"
  type: long?
  inputBinding:
    prefix: --branching
- id: in_symmetrical
  doc: "<int value>\nIn -b 2 mode only: maximal number of symmetrical crossroads traversed\
    \ while trying to close a bubble. Default: no limit"
  type: long?
  inputBinding:
    prefix: --symmetrical
- id: in_graph
  doc: Reuse a previously created graph (.h5 file) with same prefix and same k and
    c parameters (here, contrary to discoSnp++.sh, no graph file can be specified).
  type: boolean?
  inputBinding:
    prefix: --graph
- id: in_stop_discosnp_right
  doc: Stop discoSnp++ right after variant calling - the output is only a fasta file
    with no coverage information.
  type: File?
  inputBinding:
    prefix: -X
- id: in_deletion_max_size
  doc: discoSnp++ will search for deletions of size from 1 to D included. Default=100
  type: long?
  inputBinding:
    prefix: --deletion_max_size
- id: in_ambiguity_max_size
  doc: Maximal size of ambiguity of INDELs. INDELS whose ambiguity is higher than
    this value are not output  [default '20']
  type: long?
  inputBinding:
    prefix: --ambiguity_max_size
- id: in_max_snp_per_bubble
  doc: discoSnp++ will search up to P SNPs in a unique bubble. Default=3
  type: long?
  inputBinding:
    prefix: --max_snp_per_bubble
- id: in_f_of_mapping
  doc: "<file name of a file of file(s)>\nIf this option is used this fof is used\
    \ when mapping back reads on the predicted variants instead of the original fof\
    \ file provided by -r|--fof option"
  type: boolean?
  inputBinding:
    prefix: --fof_mapping
- id: in_prefix
  doc: All out files will start with this prefix. Default="discoRes"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_no_low_complexity
  doc: Remove low complexity bubbles
  type: boolean?
  inputBinding:
    prefix: --no_low_complexity
- id: in_contigs
  doc: 'Extend found polymorphisms with contigs (default: extend with unitigs)'
  type: boolean?
  inputBinding:
    prefix: --contigs
- id: in_max_substitutions
  doc: Set the number of authorized substitutions used while mapping reads on found
    SNPs (kissreads). Default=1
  type: long?
  inputBinding:
    prefix: --max_substitutions
- id: in_no_genotype
  doc: Do not compute the genotypes
  type: boolean?
  inputBinding:
    prefix: --no_genotype
- id: in_max_threads
  doc: "Max number of used threads. 0 means all threads\ndefault 0"
  type: long?
  inputBinding:
    prefix: --max_threads
- id: in_reference_genome
  doc: Reference genome file (fasta, fastq, gzipped or nor). In absence of this file
    the VCF created by VCF_creator won't contain mapping related results.
  type: File?
  inputBinding:
    prefix: --reference_genome
- id: in_use_reference_file
  doc: Use the reference file also in the variant calling, not only for mapping results
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_bwa_path
  doc: "bwa path. e.g. /home/me/my_programs/bwa-0.7.12/ (note that bwa must be pre-compiled)\n\
    Optional unless option -G used and bwa is not in the binary path."
  type: Directory?
  inputBinding:
    prefix: --bwa_path
- id: in_map_variant_predictions
  doc: "Map variant predictions on reference genome with their unitig or contig extensions.\n\
    Useless unless mapping on reference genome is required (option -G)."
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_wraith_mode_only
  doc: 'Wraith mode: only show all discoSnp++ commands without running them'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_verbose_avoids_output
  doc: Verbose 0 (avoids progress output) or 1 (enables progress output) -- default=1.
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_stop_discosnp_right
  doc: Stop discoSnp++ right after variant calling - the output is only a fasta file
    with no coverage information.
  type: File?
  outputBinding:
    glob: $(inputs.in_stop_discosnp_right)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/discosnp:2.5.4--h8b12597_0
cwlVersion: v1.1
baseCommand:
- run_discoSnp++_ML.sh
