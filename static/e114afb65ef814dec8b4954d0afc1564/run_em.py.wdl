version 1.0

task RunEmpy {
  input {
    File? input_fasta_file
    Int? input_two
    Int? batch_size
    String? alpha
    Boolean? rev_comp
    String? model
    Boolean? erase_whole
    Float? fudge
    Int? width
    Int? half_length
    Int? n_motifs
    Int? min_sites
    Int? max_sites
    Int? n_seeds
    Int? maxiter
    Float? tolerance
    Boolean? no_cuda
    Int? seed
    Directory? output_dir
    Directory? output_dirc
  }
  command <<<
    run_em_py \
      ~{if defined(input_fasta_file) then ("--input " +  '"' + input_fasta_file + '"') else ""} \
      ~{if defined(input_two) then ("--input2 " +  '"' + input_two + '"') else ""} \
      ~{if defined(batch_size) then ("--batchsize " +  '"' + batch_size + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if (rev_comp) then "--revcomp" else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if (erase_whole) then "--erasewhole" else ""} \
      ~{if defined(fudge) then ("--fudge " +  '"' + fudge + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if defined(half_length) then ("--halflength " +  '"' + half_length + '"') else ""} \
      ~{if defined(n_motifs) then ("--nmotifs " +  '"' + n_motifs + '"') else ""} \
      ~{if defined(min_sites) then ("--minsites " +  '"' + min_sites + '"') else ""} \
      ~{if defined(max_sites) then ("--maxsites " +  '"' + max_sites + '"') else ""} \
      ~{if defined(n_seeds) then ("--nseeds " +  '"' + n_seeds + '"') else ""} \
      ~{if defined(maxiter) then ("--maxiter " +  '"' + maxiter + '"') else ""} \
      ~{if defined(tolerance) then ("--tolerance " +  '"' + tolerance + '"') else ""} \
      ~{if (no_cuda) then "--no_cuda" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(output_dir) then ("--outputdir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_dirc) then ("--outputdirc " +  '"' + output_dirc + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_file: "Input FASTA file"
    input_two: "Input FASTA file of negative sequences"
    batch_size: "Input batch size for training (default: 1000)"
    alpha: "Alphabet (default: dna)"
    rev_comp: "Consider both the given strand and the reverse complement strand when searching for motifs in a complementable alphabet (default: consider given strand only)."
    model: "Model (default: tcm)"
    erase_whole: "Erase an entire sequence if it contains a discovered motif (default: erase individual motif occurrences)."
    fudge: "Fudge factor to help with extremely rare motifs. Should be >0 and <=1 (default: 0.1)."
    width: "Motif width (default: 20)."
    half_length: "k-mer half-length for gapped k-mer search seeding (default: 6)."
    n_motifs: "Number of motifs to find (default: 1)."
    min_sites: "Minimum number of motif occurrences (default: 100)."
    max_sites: "Maximum number of motif occurrences. If left unspecified, will default to number ofsequences."
    n_seeds: "Number of motif seeds to try. If left unspecified, will default to 100 (for gapped k-mersearch) or 1000 (for randomly sampled subsequence method)."
    maxiter: "Maximum number of refining iterations of batch EM to run from any starting point. Batch EM is run for maxiter iterations or until convergence (see -tolerance, below) from each starting point for refining (default: 20)"
    tolerance: "Stop iterating refining batch/on-line EM when the change in the motif probability matrix is less than tolerance. Change is defined as the euclidean distance between two successive frequency matrices (default: 1e-3)."
    no_cuda: "Disable the default CUDA training."
    seed: "Random seed for reproducibility (default: 1337)."
    output_dir: "The output directory. Causes error if the directory already exists."
    output_dirc: "The output directory. Will overwrite if directory already exists."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    Directory out_output_dirc = "${in_output_dirc}"
  }
}