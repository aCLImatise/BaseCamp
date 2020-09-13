version 1.0

task Ngmlr {
  input {
    File? _reference_filerequired
    File? _query_filepath
    String? _output_stringadds
    Boolean? skip_write
    Boolean? bam_fix
    String? rg_id
    String? rg_sm
    String? rg_lb
    String? rg_pl
    String? rg_ds
    String? rg_dt
    String? rg_pu
    Int? rg_pi
    String? rg_pg
    String? rg_cn
    String? rg_fo
    String? rg_ks
    Int? _threads_intnumber
    Boolean? pacbio_ont_presets
    Int? _minidentity_alignments
    Float? _minresidues_intfloatalignments
    Boolean? no_small_inv
    Boolean? no_low_quality_split
    Boolean? verbose
    Boolean? no_progress
    Float? match
    Float? mismatch
    Float? gap_open
    Float? gap_extend_max
    Float? gap_extend_min
    Float? gap_decay
    Int? _kmerlength_kmer
    Int? km_er_skip
    Int? bin_size
    Int? max_segments
    Int? sub_read_length
    Int? sub_read_corridor
  }
  command <<<
    ngmlr \
      ~{if defined(_reference_filerequired) then ("-r " +  '"' + _reference_filerequired + '"') else ""} \
      ~{if defined(_query_filepath) then ("-q " +  '"' + _query_filepath + '"') else ""} \
      ~{if defined(_output_stringadds) then ("-o " +  '"' + _output_stringadds + '"') else ""} \
      ~{if (skip_write) then "--skip-write" else ""} \
      ~{if (bam_fix) then "--bam-fix" else ""} \
      ~{if defined(rg_id) then ("--rg-id " +  '"' + rg_id + '"') else ""} \
      ~{if defined(rg_sm) then ("--rg-sm " +  '"' + rg_sm + '"') else ""} \
      ~{if defined(rg_lb) then ("--rg-lb " +  '"' + rg_lb + '"') else ""} \
      ~{if defined(rg_pl) then ("--rg-pl " +  '"' + rg_pl + '"') else ""} \
      ~{if defined(rg_ds) then ("--rg-ds " +  '"' + rg_ds + '"') else ""} \
      ~{if defined(rg_dt) then ("--rg-dt " +  '"' + rg_dt + '"') else ""} \
      ~{if defined(rg_pu) then ("--rg-pu " +  '"' + rg_pu + '"') else ""} \
      ~{if defined(rg_pi) then ("--rg-pi " +  '"' + rg_pi + '"') else ""} \
      ~{if defined(rg_pg) then ("--rg-pg " +  '"' + rg_pg + '"') else ""} \
      ~{if defined(rg_cn) then ("--rg-cn " +  '"' + rg_cn + '"') else ""} \
      ~{if defined(rg_fo) then ("--rg-fo " +  '"' + rg_fo + '"') else ""} \
      ~{if defined(rg_ks) then ("--rg-ks " +  '"' + rg_ks + '"') else ""} \
      ~{if defined(_threads_intnumber) then ("-t " +  '"' + _threads_intnumber + '"') else ""} \
      ~{if (pacbio_ont_presets) then "-x" else ""} \
      ~{if defined(_minidentity_alignments) then ("-i " +  '"' + _minidentity_alignments + '"') else ""} \
      ~{if defined(_minresidues_intfloatalignments) then ("-R " +  '"' + _minresidues_intfloatalignments + '"') else ""} \
      ~{if (no_small_inv) then "--no-smallinv" else ""} \
      ~{if (no_low_quality_split) then "--no-lowqualitysplit" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_progress) then "--no-progress" else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(gap_open) then ("--gap-open " +  '"' + gap_open + '"') else ""} \
      ~{if defined(gap_extend_max) then ("--gap-extend-max " +  '"' + gap_extend_max + '"') else ""} \
      ~{if defined(gap_extend_min) then ("--gap-extend-min " +  '"' + gap_extend_min + '"') else ""} \
      ~{if defined(gap_decay) then ("--gap-decay " +  '"' + gap_decay + '"') else ""} \
      ~{if defined(_kmerlength_kmer) then ("-k " +  '"' + _kmerlength_kmer + '"') else ""} \
      ~{if defined(km_er_skip) then ("--kmer-skip " +  '"' + km_er_skip + '"') else ""} \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""} \
      ~{if defined(max_segments) then ("--max-segments " +  '"' + max_segments + '"') else ""} \
      ~{if defined(sub_read_length) then ("--subread-length " +  '"' + sub_read_length + '"') else ""} \
      ~{if defined(sub_read_corridor) then ("--subread-corridor " +  '"' + sub_read_corridor + '"') else ""}
  >>>
  parameter_meta {
    _reference_filerequired: ",  --reference <file>\\n(required)  Path to the reference genome (FASTA/Q, can be gzipped)"
    _query_filepath: ",  --query <file>\\nPath to the read file (FASTA/Q) [/dev/stdin]"
    _output_stringadds: ",  --output <string>\\nAdds RG:Z:<string> to all alignments in SAM/BAM [none]"
    skip_write: "Don't write reference index to disk [false]"
    bam_fix: "Report reads with > 64k CIGAR operations as unmapped. Required to be compatibel to BAM format [false]"
    rg_id: "Adds RG:Z:<string> to all alignments in SAM/BAM [none]"
    rg_sm: "RG header: Sample [none]"
    rg_lb: "RG header: Library [none]"
    rg_pl: "RG header: Platform [none]"
    rg_ds: "RG header: Description [none]"
    rg_dt: "RG header: Date (format: YYYY-MM-DD) [none]"
    rg_pu: "RG header: Platform unit [none]"
    rg_pi: "RG header: Median insert size [none]"
    rg_pg: "RG header: Programs [none]"
    rg_cn: "RG header: sequencing center [none]"
    rg_fo: "RG header: Flow order [none]"
    rg_ks: "RG header: Key sequence [none]"
    _threads_intnumber: ",  --threads <int>\\nNumber of threads [1]"
    pacbio_ont_presets: "<pacbio, ont>,  --presets <pacbio, ont>\\nParameter presets for different sequencing technologies [pacbio]"
    _minidentity_alignments: ",  --min-identity <0-1>\\nAlignments with an identity lower than this threshold will be discarded [0.65]"
    _minresidues_intfloatalignments: ",  --min-residues <int/float>\\nAlignments containing less than <int> or (<float> * read length) residues will be discarded [0.25]"
    no_small_inv: "Don't detect small inversions [false]"
    no_low_quality_split: "Split alignments with poor quality [false]"
    verbose: "Debug output [false]"
    no_progress: "Don't print progress info while mapping [false]"
    match: "Match score [2]"
    mismatch: "Mismatch score [-5]"
    gap_open: "Gap open score [-5]"
    gap_extend_max: "Gap open extend max [-5]"
    gap_extend_min: "Gap open extend min [-1]"
    gap_decay: "Gap extend decay [0.15]"
    _kmerlength_kmer: ",  --kmer-length <10-15>\\nK-mer length in bases [13]"
    km_er_skip: "Number of k-mers to skip when building the lookup table from the reference [2]"
    bin_size: "Sets the size of the grid used during candidate search [4]"
    max_segments: "Max number of segments allowed for a read per kb [1]"
    sub_read_length: "Length of fragments reads are split into [256]"
    sub_read_corridor: "Length of corridor sub-reads are aligned with [40]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}