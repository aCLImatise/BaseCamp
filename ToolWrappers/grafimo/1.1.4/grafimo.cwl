class: CommandLineTool
id: grafimo.cwl
inputs:
- id: in_number_cpu_cores
  doc: "[NCORES], --cores [NCORES]\nNumber of CPU cores to use. Use 0 to auto-detect.\n\
    Default: 0. To search motifs in a whole genome\nvariation graph the default is\
    \ 1 (avoid memory\nissues)."
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_verbose
  doc: Print additional information about GRAFIMO run.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Enable error traceback.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_output_directory
  doc: "[OUTDIR], --out [OUTDIR]\nOutput directory. [optional]"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_path_reference_file
  doc: "[REFERENCE-FASTA], --linear-genome [REFERENCE-FASTA]\nPath to reference genome\
    \ FASTA file."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_path_vcf_becompressed
  doc: "[VCF], --vcf [VCF]\nPath to VCF file. Note that the VCF should be\ncompressed\
    \ (e.g. myvcf.vcf.gz)."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_chrom_s_build
  doc: "[1 [X ...]]\nChromosomes for which construct the VG. By default\nGRAFIMO constructs\
    \ the VG for all chromsomes."
  type: boolean?
  inputBinding:
    prefix: --chroms-build
- id: in_chrom_s_prefix_build
  doc: "[CHRPREFIX]\nPrefix to append in front of chromosome numbers. To\nname chromosome\
    \ VGs with only their number (e.g.\n1.xg), use \"--chroms-prefix-build \"\" \"\
    . Default: ."
  type: boolean?
  inputBinding:
    prefix: --chroms-prefix-build
- id: in_chrom_s_name_map_build
  doc: "[NAME-MAP-FILE]\nSpace or tab-separated file, containing original\nchromosome\
    \ names in the first columns and the names to\nuse when storing corresponding\
    \ VGs. By default the VGs\nare named after the encoded chromosome (e.g. chr1.xg)."
  type: boolean?
  inputBinding:
    prefix: --chroms-namemap-build
- id: in_re_index
  doc: "Reindex the VCF file with Tabix, even if a TBI index\nos already available."
  type: boolean?
  inputBinding:
    prefix: --reindex
- id: in_path_vg_pangenome
  doc: "[GENOME-GRAPH], --genome-graph [GENOME-GRAPH]\nPath to VG pangenome variation\
    \ graph (VG or XG\nformat)."
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_path_directory_containing
  doc: "[GENOME-GRAPHS-DIR], --genome-graph-dir [GENOME-GRAPHS-DIR]\nPath to the directory\
    \ containing the pangenome\nvariation graphs to scan (VG or XG format)"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_bed_file
  doc: "BED file containing the genomic regions to scan for\noccurrences of the input\
    \ motif(s)."
  type: File?
  inputBinding:
    prefix: --bedfile
- id: in_motif
  doc: Motif Position Weight Matrix (MEME or JASPAR format).
  type: long[]
  inputBinding:
    prefix: --motif
- id: in_background_distribution_file
  doc: "[BACKGROUND], --bgfile [BACKGROUND]\nBackground distribution file."
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_pseudocount_used_processing
  doc: "[PSEUDOCOUNT], --pseudo [PSEUDOCOUNT]\nPseudocount used during motif PWM processing."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_statistical_significance_threshold
  doc: "[THRESHOLD], --threshold [THRESHOLD]\nStatistical significance threshold value.\
    \ By default\nthe threshold is applied on P-values. To apply the\nthreshold on\
    \ q-values use the \"--qvalueT\" options.\nDefault:0.0001."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_no_q_value
  doc: If used, GRAFIMO skips q-value computation.
  type: boolean?
  inputBinding:
    prefix: --no-qvalue
- id: in_no_reverse
  doc: If used, GRAFIMO scans only the forward strand.
  type: boolean?
  inputBinding:
    prefix: --no-reverse
- id: in_text_only
  doc: Print results to stdout.
  type: boolean?
  inputBinding:
    prefix: --text-only
- id: in_chrom_s_find
  doc: "[1 [X ...]]\nScan only the specified chromosomes."
  type: boolean?
  inputBinding:
    prefix: --chroms-find
- id: in_chrom_s_prefix_find
  doc: "[CHRPREFIX]\nPrefix shared by all chromosomes. The prefix should be\nfollowed\
    \ by the chromosome number. If chromosome VGs\nare stored only with their chromosome\
    \ number (e.g.\n1.xg) use \"--chroms-prefix-fin \"\" \". Default: ."
  type: boolean?
  inputBinding:
    prefix: --chroms-prefix-find
- id: in_chrom_s_name_map_find
  doc: "[NAME-MAP-FILE]\nSpace or tab-separated file, containing original\nchromosome\
    \ names in the first columns and the names\nused to store the corresponding VGs.\
    \ By default\nGRAFIMO assumes that VGs are named after the encoded\nchromosome\
    \ (e.g. chr1.xg)."
  type: boolean?
  inputBinding:
    prefix: --chroms-namemap-find
- id: in_recomb
  doc: "Consider all the possible recombinants sequences which\ncould be obtained\
    \ from the genetic variants encoded in\nthe VG. With this option the haplotypes\
    \ encoded in the\nVG are ignored."
  type: boolean?
  inputBinding:
    prefix: --recomb
- id: in_q_value_t
  doc: "Apply motif occurrence score statistical significance\nthreshold on q-values\
    \ rather than on P-values."
  type: boolean?
  inputBinding:
    prefix: --qvalueT
- id: in_top_graphs
  doc: "[GRAPHS-NUM]\nStore the PNG image of the top \"GRAPHS-NUM\" regions of\nthe\
    \ VG (motif occurrences sorted by increasing\nP-value).\n"
  type: boolean?
  inputBinding:
    prefix: --top-graphs
- id: in_workflow
  doc: "Mandatory argument placed immediately after \"grafimo\".\nOnly two values\
    \ are accepted: \"buildvg\" and\n\"findmotif\". When called \"grafimo buildvg\"\
    , the\nsoftware will compute the genome variation graph from\ninput data (see\
    \ \"buildvg options\" section below for\nmore arguments). When called \"grafimo\
    \ findmotif\", the\nsoftware will scan the input VG(s) for potential\noccurrences\
    \ of the input motif(s) (see \"findmotif\noption\" section below for more arguments)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "[OUTDIR], --out [OUTDIR]\nOutput directory. [optional]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/grafimo:1.1.4--py38h0dcb9f6_0
cwlVersion: v1.1
baseCommand:
- grafimo
