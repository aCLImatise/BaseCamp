version 1.0

task Tirmite {
  input {
    String? genome
    String? hmm_dir
    String? hmm_file
    String? al_ndir
    String? aln_file
    String? aln_format
    String? pair_bed
    String? stable_reps
    String? outdir
    String? prefix
    Boolean? no_pairing
    Boolean? gff_out
    String? report_tir
    String? pad_len
    Boolean? keep_temp
    Boolean? verbose
    String? cores
    Int? max_eval
    Int? max_dist
    Boolean? no_bias
    String? matrix
    Int? min_cov
    String? hmm_press
    String? n_hmmer
    String? hmmbuild
  }
  command <<<
    tirmite \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(hmm_dir) then ("--hmmDir " +  '"' + hmm_dir + '"') else ""} \
      ~{if defined(hmm_file) then ("--hmmFile " +  '"' + hmm_file + '"') else ""} \
      ~{if defined(al_ndir) then ("--alnDir " +  '"' + al_ndir + '"') else ""} \
      ~{if defined(aln_file) then ("--alnFile " +  '"' + aln_file + '"') else ""} \
      ~{if defined(aln_format) then ("--alnFormat " +  '"' + aln_format + '"') else ""} \
      ~{if defined(pair_bed) then ("--pairbed " +  '"' + pair_bed + '"') else ""} \
      ~{if defined(stable_reps) then ("--stableReps " +  '"' + stable_reps + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--nopairing" false="" no_pairing} \
      ~{true="--gffOut" false="" gff_out} \
      ~{if defined(report_tir) then ("--reportTIR " +  '"' + report_tir + '"') else ""} \
      ~{if defined(pad_len) then ("--padlen " +  '"' + pad_len + '"') else ""} \
      ~{true="--keeptemp" false="" keep_temp} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(max_eval) then ("--maxeval " +  '"' + max_eval + '"') else ""} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""} \
      ~{true="--nobias" false="" no_bias} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(hmm_press) then ("--hmmpress " +  '"' + hmm_press + '"') else ""} \
      ~{if defined(n_hmmer) then ("--nhmmer " +  '"' + n_hmmer + '"') else ""} \
      ~{if defined(hmmbuild) then ("--hmmbuild " +  '"' + hmmbuild + '"') else ""}
  >>>
  parameter_meta {
    genome: "Path to target genome that will be queried with HMMs."
    hmm_dir: "Directory containing pre-prepared TIR-pHMMs."
    hmm_file: "Path to single TIR-pHMM file. Incompatible with \"-- hmmDir\"."
    al_ndir: "Path to directory containing only TIR alignments to be converted to HMM."
    aln_file: "Provide a single TIR alignment to be converted to HMM. Incompatible with \"--alnDir\"."
    aln_format: "Alignments provided with \"--alnDir\" or \"--alnFile\" are all in this format."
    pair_bed: "If set TIRmite will preform pairing on TIRs from custom bedfile only."
    stable_reps: "Number of times to iterate pairing procedure when no additional pairs are found AND remaining unpaired hits > 0."
    outdir: "All output files will be written to this directory."
    prefix: "Add prefix to all TIRs and Paired elements detected in this run. Useful when running same TIR-pHMM against many genomes.(Default = None)"
    no_pairing: "If set, only report TIR-pHMM hits. Do not attempt pairing."
    gff_out: "If set report features as prefix.gff3. File saved to outdir. Default: False"
    report_tir: "Options for reporting TIRs in GFF annotation file."
    pad_len: "Extract x bases either side of TIR when writing TIRs to fasta."
    keep_temp: "If set do not delete temp file directory."
    verbose: "Set syscall reporting to verbose."
    cores: "Set number of cores available to hmmer software."
    max_eval: "Maximum e-value allowed for valid hit. Default = 0.001"
    max_dist: "Maximum distance allowed between TIR candidates to consider valid pairing."
    no_bias: "Turn OFF bias correction of scores in nhmmer."
    matrix: "Use custom DNA substitution matrix with nhmmer."
    min_cov: "Minimum valid hit length as prop of model length. Defaults to 0.5"
    hmm_press: "Set location of hmmpress if not in PATH."
    n_hmmer: "Set location of nhmmer if not in PATH."
    hmmbuild: "Set location of hmmbuild if not in PATH."
  }
}