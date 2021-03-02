version 1.0

task AribaRun {
  input {
    Int? nuc_mer_min_id
    Int? nuc_mer_min_len
    Int? nuc_mer_break_len
    String? assembler
    Int? assembly_cov
    Int? min_sc_aff_depth
    String? spades_mode
    String? spades_options
    Int? threads
    Float? assembled_threshold
    Int? gene_nt_extend
    Float? unique_threshold
    Directory? force
    Boolean? no_clean
    Directory? tmp_dir
    Boolean? verbose
    String prepare_ref_dir
    String run
    Int reads_two
    String outdir
  }
  command <<<
    ariba run \
      ~{prepare_ref_dir} \
      ~{run} \
      ~{reads_two} \
      ~{outdir} \
      ~{if defined(nuc_mer_min_id) then ("--nucmer_min_id " +  '"' + nuc_mer_min_id + '"') else ""} \
      ~{if defined(nuc_mer_min_len) then ("--nucmer_min_len " +  '"' + nuc_mer_min_len + '"') else ""} \
      ~{if defined(nuc_mer_break_len) then ("--nucmer_breaklen " +  '"' + nuc_mer_break_len + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(assembly_cov) then ("--assembly_cov " +  '"' + assembly_cov + '"') else ""} \
      ~{if defined(min_sc_aff_depth) then ("--min_scaff_depth " +  '"' + min_sc_aff_depth + '"') else ""} \
      ~{if defined(spades_mode) then ("--spades_mode " +  '"' + spades_mode + '"') else ""} \
      ~{if defined(spades_options) then ("--spades_options " +  '"' + spades_options + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(assembled_threshold) then ("--assembled_threshold " +  '"' + assembled_threshold + '"') else ""} \
      ~{if defined(gene_nt_extend) then ("--gene_nt_extend " +  '"' + gene_nt_extend + '"') else ""} \
      ~{if defined(unique_threshold) then ("--unique_threshold " +  '"' + unique_threshold + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (no_clean) then "--noclean" else ""} \
      ~{if defined(tmp_dir) then ("--tmp_dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0"
  }
  parameter_meta {
    nuc_mer_min_id: "Minimum alignment identity (delta-filter -i) [90]"
    nuc_mer_min_len: "Minimum alignment length (delta-filter -i) [20]"
    nuc_mer_break_len: "Value to use for -breaklen when running nucmer [200]"
    assembler: "Assembler to use"
    assembly_cov: "Target read coverage when sampling reads for assembly\\n[50]"
    min_sc_aff_depth: "Minimum number of read pairs needed as evidence for\\nscaffold link between two contigs [10]"
    spades_mode: "If using Spades assembler, either use default WGS\\nmode, Single Cell mode (`spades.py --sc`) or RNA mode\\n(`spades.py --rna`). Use SC or RNA mode if your input\\nis from a viral sequencing with very uneven and deep\\ncoverage. Set `--assembly_cov` to some high value if\\nusing SC or RNA mode"
    spades_options: "Extra options to pass to Spades assembler. Sensible\\ndefault options will be picked based on\\n`--spades_mode` argument. Anything set here will\\nreplace the defaults completely"
    threads: "Experimental. Number of threads. Will run clusters in\\nparallel, but not minimap (yet) [1]"
    assembled_threshold: "(between 0 and 1)\\nIf proportion of gene assembled (regardless of into\\nhow many contigs) is at least this value then the flag\\ngene_assembled is set [0.95]"
    gene_nt_extend: "Max number of nucleotides to extend ends of gene\\nmatches to look for start/stop codons [30]"
    unique_threshold: "(between 0 and 1)\\nIf proportion of bases in gene assembled more than\\nonce is <= this value, then the flag unique_contig is\\nset [0.03]"
    force: "Overwrite output directory, if it already exists"
    no_clean: "Do not clean up intermediate files"
    tmp_dir: "Existing directory in which to create a temporary\\ndirectory used for local assemblies"
    verbose: "Be verbose"
    prepare_ref_dir: "Name of output directory when \\\"ariba prepareref\\\" was"
    run: "reads_1               Name of fwd reads fastq file"
    reads_two: "Name of rev reads fastq file"
    outdir: "Output directory (must not already exist)"
  }
  output {
    File out_stdout = stdout()
    Directory out_force = "${in_force}"
  }
}