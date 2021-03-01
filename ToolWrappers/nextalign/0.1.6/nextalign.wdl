version 1.0

task Nextalign {
  input {
    Boolean? version_detailed
    Boolean? verbose
    Int? jobs
    Boolean? in_order
    File? sequences
    File? reference
    String? genes
    File? gene_map
    File? output_dir
    File? output_basename
    File? output_fast_a
    File? output_insertions
    Int? min_length
    Int? penalty_gap_extend
    Int? penalty_gap_open
    Int? penalty_gap_open_in_frame
    Int? penalty_gap_open_out_of_frame
    Int? penalty_mismatch
    Int? score_match
    Int? max_in_del
    Int? nuc_seed_length
    Int? nuc_min_seeds
    Int? nuc_seed_spacing
    Int? nuc_mismatches_allowed
    Int? aa_seed_length
    Int? aa_min_seeds
    Int? aa_seed_spacing
    Int? aa_mismatches_allowed
    Boolean? v
  }
  command <<<
    nextalign \
      ~{if (version_detailed) then "--version-detailed" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if (in_order) then "--in-order" else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(gene_map) then ("--genemap " +  '"' + gene_map + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_basename) then ("--output-basename " +  '"' + output_basename + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(output_insertions) then ("--output-insertions " +  '"' + output_insertions + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(penalty_gap_extend) then ("--penalty-gap-extend " +  '"' + penalty_gap_extend + '"') else ""} \
      ~{if defined(penalty_gap_open) then ("--penalty-gap-open " +  '"' + penalty_gap_open + '"') else ""} \
      ~{if defined(penalty_gap_open_in_frame) then ("--penalty-gap-open-in-frame " +  '"' + penalty_gap_open_in_frame + '"') else ""} \
      ~{if defined(penalty_gap_open_out_of_frame) then ("--penalty-gap-open-out-of-frame " +  '"' + penalty_gap_open_out_of_frame + '"') else ""} \
      ~{if defined(penalty_mismatch) then ("--penalty-mismatch " +  '"' + penalty_mismatch + '"') else ""} \
      ~{if defined(score_match) then ("--score-match " +  '"' + score_match + '"') else ""} \
      ~{if defined(max_in_del) then ("--max-indel " +  '"' + max_in_del + '"') else ""} \
      ~{if defined(nuc_seed_length) then ("--nuc-seed-length " +  '"' + nuc_seed_length + '"') else ""} \
      ~{if defined(nuc_min_seeds) then ("--nuc-min-seeds " +  '"' + nuc_min_seeds + '"') else ""} \
      ~{if defined(nuc_seed_spacing) then ("--nuc-seed-spacing " +  '"' + nuc_seed_spacing + '"') else ""} \
      ~{if defined(nuc_mismatches_allowed) then ("--nuc-mismatches-allowed " +  '"' + nuc_mismatches_allowed + '"') else ""} \
      ~{if defined(aa_seed_length) then ("--aa-seed-length " +  '"' + aa_seed_length + '"') else ""} \
      ~{if defined(aa_min_seeds) then ("--aa-min-seeds " +  '"' + aa_min_seeds + '"') else ""} \
      ~{if defined(aa_seed_spacing) then ("--aa-seed-spacing " +  '"' + aa_seed_spacing + '"') else ""} \
      ~{if defined(aa_mismatches_allowed) then ("--aa-mismatches-allowed " +  '"' + aa_mismatches_allowed + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextalign:0.1.6--0"
  }
  parameter_meta {
    version_detailed: "Show detailed version"
    verbose: "Increase verbosity of the console output. By\\ndefault only errors and warnings are shown.\\nWith this option more information will be\\nprinted."
    jobs: "(optional, integer) Number of CPU threads\\nused by the algorithm. If not specified or if a\\nnon-positive value specified, the algorithm\\nwill use all the available threads. (default: 0)"
    in_order: "Force parallel processing in-order. With this\\nflag the program will wait for results from\\nthe previous sequences to be written to the\\noutput files before writing the results of the\\nnext sequences, preserving the same order as in\\nthe input file. Due to variable sequence\\nprocessing times, this might introduce unnecessary\\nwaiting times, but ensures that the resulting\\nsequences are written in the same order as\\nthey occur in the inputs (except for sequences\\nwhich have errors). By default, without this\\nflag, processing might happen out of order, which\\nis faster, due to the elimination of waiting,\\nbut might also lead to results written out of\\norder - the order of results is not specified\\nand depends on thread scheduling and\\nprocessing times of individual sequences. This option\\nis only relevant when `--jobs` is greater than\\n1. Note: the sequences which trigger errors\\nduring processing will be omitted from outputs,\\nregardless of this flag."
    sequences: "(required, string) Path to a FASTA file with\\ninput sequences"
    reference: "(required, string) Path to a FASTA or plain\\ntext file containing reference sequence"
    genes: "(optional, string) List of genes to\\ntranslate. Requires `--genemap`. If not supplied or\\nempty, sequence will not be translated. If\\nnon-empty, should contain a coma-separated list of\\ngene names. Parameters `--genes` and\\n`--genemap` should be either both specified or both\\nomitted."
    gene_map: "(optional, string) Path to a GFF file\\ncontaining custom gene map. Requires `--genes.` If\\nnot supplied, sequence will not be translated.\\nParameters `--genes` and `--genemap` should be\\neither both specified or both omitted."
    output_dir: "(optional, string) Write output files to this\\ndirectory. The base filename can be set using\\n`--output-basename` flag. The paths can be\\noverridden on a per-file basis using\\n`--output-*` flags. If the required directory tree does\\nnot exist, it will be created."
    output_basename: "(optional, string) Set the base filename to\\nuse for output files. To be used together with\\n`--output-dir` flag. By default uses the\\nfilename of the sequences file (provided with\\n`--sequences`). The paths can be overridden on a\\nper-file basis using `--output-*` flags."
    output_fast_a: "(required, string) Path to output aligned\\nsequences in FASTA format (overrides paths given\\nwith `--output-dir` and `--output-basename`).\\nIf the required directory tree does not exist,\\nit will be created."
    output_insertions: "(optional, string) Path to output stripped\\ninsertions data in CSV format (overrides paths\\ngiven with `--output-dir` and\\n`--output-basename`). If the required directory tree does not\\nexist, it will be created."
    min_length: "(optional, integer, non-negative) Minimum\\nlength of nucleotide sequence to consider for\\nalignment. If a sequence is shorter than that,\\nalignment will not be attempted and a warning\\nwill be emitted. When adjusting this parameter,\\nnote that alignment of short sequences can be\\nunreliable. (default: 100)"
    penalty_gap_extend: "(optional, integer, non-negative) Penalty for\\nextending a gap. If zero, all gaps regardless\\nof length incur the same penalty. (default:\\n0)"
    penalty_gap_open: "(optional, integer, positive) Penalty for\\nopening of a gap. A higher penalty results in\\nfewer gaps and more mismatches. Should be less\\nthan `--penalty-gap-open-in-frame` to avoid gaps\\nin genes. (default: 6)"
    penalty_gap_open_in_frame: "(optional, integer, positive) As\\n`--penalty-gap-open`, but for opening gaps at the\\nbeginning of a codon. Should be greater than\\n`--penalty-gap-open` and less than\\n`--penalty-gap-open-out-of-frame`, to avoid gaps in genes, but\\nfavor gaps that align with codons. (default: 7)"
    penalty_gap_open_out_of_frame: "(optional, integer, positive) As\\n`--penalty-gap-open`, but for opening gaps in the body of\\na codon. Should be greater than\\n`--penalty-gap-open-in-frame` to favor gaps that align with\\ncodons. (default: 8)"
    penalty_mismatch: "(optional, integer, positive) Penalty for\\naligned nucleotides or aminoacids that differ in\\nstate during alignment. Note that this is\\nredundantly parameterized with `--score-match`.\\n(default: 1)"
    score_match: "(optional, integer, positive) Score for\\nencouraging aligned nucleotides or aminoacids with\\nmatching state. (default: 3)"
    max_in_del: "(optional, integer, non-negative) Maximum\\nlength of insertions or deletions allowed to\\nproceed with alignment. Alignments with long\\nindels are slow to compute and require substantial\\nmemory in the current implementation.\\nAlignment of sequences with indels longer that this\\nvalue, will not be attempted and a warning will\\nbe emitted. (default: 400)"
    nuc_seed_length: "(optional, integer, positive) Seed length for\\nnucleotide alignment. Seeds should be long\\nenough to be unique, but short enough to match\\nwith high probability. (default: 21)"
    nuc_min_seeds: "(optional, integer, positive) Minimum number\\nof seeds to search for during nucleotide\\nalignment. Relevant for short sequences. In long\\nsequences, the number of seeds is determined by\\n`--nuc-seed-spacing`. Should be a positive\\ninteger. (default: 10)"
    nuc_seed_spacing: "(optional, integer, non-negative) Spacing\\nbetween seeds during nucleotide alignment.\\n(default: 100)"
    nuc_mismatches_allowed: "(optional, integer, non-negative) Maximum\\nnumber of mismatching nucleotides allowed for a\\nseed to be considered a match. (default: 3)"
    aa_seed_length: "(optional, integer, positive) Seed length for\\naminoacid alignment. (default: 12)"
    aa_min_seeds: "(optional, integer, positive) Minimum number\\nof seeds to search for during aminoacid\\nalignment. Relevant for short sequences. In long\\nsequences, the number of seeds is determined by\\n`--aa-seed-spacing`. (default: 10)"
    aa_seed_spacing: "(optional, integer, non-negative) Spacing\\nbetween seeds during aminoacid alignment.\\n(default: 100)"
    aa_mismatches_allowed: "(optional, integer, non-negative) Maximum\\nnumber of mismatching aminoacids allowed for a\\nseed to be considered a match. (default: 2)\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
    File out_output_basename = "${in_output_basename}"
    File out_output_fast_a = "${in_output_fast_a}"
    File out_output_insertions = "${in_output_insertions}"
  }
}