class: CommandLineTool
id: run_discoSnp++_ML.sh.cwl
inputs:
- id: in_f_of
  doc: "<file name of a file of file(s)>\nThe input read files indicated in a file\
    \ of file(s)\nExample: -r bank.fof with bank.fof containing the two lines\ndata_sample/reads_sequence1.fasta\n\
    data_sample/reads_sequence2.fasta.gz"
  type: boolean
  inputBinding:
    prefix: --fof
- id: in_path_compiled_directory
  doc: path to compiled dsk (directory containing compiled dsk and dsk2ascii)
  type: File
  inputBinding:
    prefix: -f
- id: in__ksize_value
  doc: "| --k_size value <int value>\nSet the length of used kmers. Must fit the compiled\
    \ value.\nDefault=31"
  type: boolean
  inputBinding:
    prefix: -k
- id: in__mincoverage_value
  doc: "| --min_coverage value <int value>\nSet the minimal coverage per read set:\
    \ Used by kissnp2 (don't use kmers with lower coverage) and kissreads (read coherency\
    \ threshold).\nThis coverage can be automatically detected per read set (in this\
    \ case use \"auto\" or specified per read set, see the documentation.\nDefault=3"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__maxcoverage_value
  doc: "| --max_coverage value <int value in 0, 1 or 2>\nSet the maximal coverage\
    \ for each read set: Used by kissnp2 (don't use kmers with higher coverage).\n\
    Default=2^31-1"
  type: boolean
  inputBinding:
    prefix: -C
- id: in__branching_value
  doc: "| --branching value.\n0: forbid variants for which any of the two paths is\
    \ branching (high precision, lowers the recall in complex genomes).\nDefault value\n\
    1: (smart branching) forbid SNPs for which the two paths are branching (e.g. the\
    \ two paths can be created either with a 'A' or a 'C' at the same position\n2:\
    \ No limitation on branching (lowers the precision, high recall)"
  type: boolean
  inputBinding:
    prefix: -b
- id: in__symmetrical_value
  doc: "| --symmetrical value <int value>\nIn -b 2 mode only: maximal number of symmetrical\
    \ crossroads traversed while trying to close a bubble. Default: no limit"
  type: boolean
  inputBinding:
    prefix: -s
- id: in__graph_file
  doc: "| --graph <file name>\nReuse a previously created graph (.h5 file) with same\
    \ prefix and same k and c parameters."
  type: boolean
  inputBinding:
    prefix: -g
- id: in_stop_discosnp_calling
  doc: Stop discoSnp++ right after variant calling - the output is only a fasta file
    with no coverage information.
  type: File
  inputBinding:
    prefix: -X
- id: in__deletionmaxsize_intdiscosnp
  doc: "| --deletion_max_size <int>\ndiscoSnp++ will search for deletions of size\
    \ from 1 to D included. Default=100"
  type: boolean
  inputBinding:
    prefix: -D
- id: in__ambiguitymaxsize_intmaximal
  doc: "| --ambiguity_max_size <int>\nMaximal size of ambiguity of INDELs. INDELS\
    \ whose ambiguity is higher than this value are not output  [default '20']"
  type: boolean
  inputBinding:
    prefix: -a
- id: in__maxsnpperbubble_intdiscosnp
  doc: "| --max_snp_per_bubble <int>\ndiscoSnp++ will search up to P SNPs in a unique\
    \ bubble. Default=3"
  type: boolean
  inputBinding:
    prefix: -P
- id: in_f_of_mapping
  doc: "<file name of a file of file(s)>\nIf this option is used this fof is used\
    \ when mapping back reads on the predicted variants instead of the original fof\
    \ file provided by -r|--fof option"
  type: boolean
  inputBinding:
    prefix: --fof_mapping
- id: in__prefix_stringall
  doc: "| --prefix <string>\nAll out files will start with this prefix. Default=\"\
    discoRes\""
  type: boolean
  inputBinding:
    prefix: -p
- id: in__nolowcomplexityremove_low
  doc: "| --no_low_complexity\nRemove low complexity bubbles"
  type: boolean
  inputBinding:
    prefix: -l
- id: in__contigsextend_found
  doc: "| --contigs\nExtend found polymorphisms with contigs (default: extend with\
    \ unitigs)"
  type: boolean
  inputBinding:
    prefix: -T
- id: in__intset_number
  doc: "| --max_substitutions <int>\nSet the number of authorized substitutions used\
    \ while mapping reads on found SNPs (kissreads). Default=1"
  type: boolean
  inputBinding:
    prefix: -d
- id: in__nogenotypedo_compute
  doc: "| --no_genotype\nDo not compute the genotypes"
  type: boolean
  inputBinding:
    prefix: -n
- id: in__maxthreads_intmax
  doc: "| --max_threads <int>\nMax number of used threads. 0 means all threads\ndefault\
    \ 0"
  type: boolean
  inputBinding:
    prefix: -u
- id: in__referencegenome_file
  doc: "| --reference_genome <file name>\nReference genome file (fasta, fastq, gzipped\
    \ or nor). In absence of this file the VCF created by VCF_creator won't contain\
    \ mapping related results."
  type: boolean
  inputBinding:
    prefix: -G
- id: in_use_reference_file
  doc: Use the reference file also in the variant calling, not only for mapping results
  type: boolean
  inputBinding:
    prefix: -R
- id: in__bwapath_directory
  doc: "| --bwa_path <directory name>\nbwa path. e.g. /home/me/my_programs/bwa-0.7.12/\
    \ (note that bwa must be pre-compiled)\nOptional unless option -G used and bwa\
    \ is not in the binary path."
  type: boolean
  inputBinding:
    prefix: -B
- id: in_map_variant_predictions
  doc: "Map variant predictions on reference genome with their unitig or contig extensions.\n\
    Useless unless mapping on reference genome is required (option -G)."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_wraith_mode_only
  doc: 'Wraith mode: only show all discoSnp++ commands without running them'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_verbose_avoids_output
  doc: Verbose 0 (avoids progress output) or 1 (enables progress output) -- default=1.
  type: long
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_stop_discosnp_calling
  doc: Stop discoSnp++ right after variant calling - the output is only a fasta file
    with no coverage information.
  type: File
  outputBinding:
    glob: $(inputs.in_stop_discosnp_calling)
cwlVersion: v1.1
baseCommand:
- run_discoSnp++_ML.sh
