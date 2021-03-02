version 1.0

task HalLodInterpolatepy {
  input {
    Int? max_block
    Float? scale
    File? out_haldir
    Boolean? resume
    Int? max_dna
    Boolean? abs_path
    Boolean? trans
    Boolean? in_memory
    String? probe_frac
    Int? min_seq_frac
    Int? min_cov_frac
    Int? scale_cor_fac
    Int? num_proc
    Int? chunk
    Int? min_lod_zero
    Int? cut_off
    String hal
    String out_lod_file
  }
  command <<<
    halLodInterpolate_py \
      ~{hal} \
      ~{out_lod_file} \
      ~{if defined(max_block) then ("--maxBlock " +  '"' + max_block + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(out_haldir) then ("--outHalDir " +  '"' + out_haldir + '"') else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if defined(max_dna) then ("--maxDNA " +  '"' + max_dna + '"') else ""} \
      ~{if (abs_path) then "--absPath" else ""} \
      ~{if (trans) then "--trans" else ""} \
      ~{if (in_memory) then "--inMemory" else ""} \
      ~{if defined(probe_frac) then ("--probeFrac " +  '"' + probe_frac + '"') else ""} \
      ~{if defined(min_seq_frac) then ("--minSeqFrac " +  '"' + min_seq_frac + '"') else ""} \
      ~{if defined(min_cov_frac) then ("--minCovFrac " +  '"' + min_cov_frac + '"') else ""} \
      ~{if defined(scale_cor_fac) then ("--scaleCorFac " +  '"' + scale_cor_fac + '"') else ""} \
      ~{if defined(num_proc) then ("--numProc " +  '"' + num_proc + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(min_lod_zero) then ("--minLod0 " +  '"' + min_lod_zero + '"') else ""} \
      ~{if defined(cut_off) then ("--cutOff " +  '"' + cut_off + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max_block: "maximum desired number of blocks to ever display at\\nonce. (default: 223)"
    scale: "scaling factor between two successive levels of detail\\n(default: 2.5)"
    out_haldir: "path of directory where interpolated hal files are\\nstored. By default they will be stored in the same\\ndirectory as the input file (default: None)"
    resume: "do not overwrite existing hal lod files if they exist.\\n(default: False)"
    max_dna: "maximum DNA sequence query. Generated levels of detail\\nwith associated minimum query ranges > maxDNA will not\\ncontain sequence information. -1 can be used to\\nspecify that all levels will get sequence (default: 0)"
    abs_path: "write absolute path of created HAL files in the\\noutLodFile. By default, the paths are relative to the\\npath of the outLodFile. (default: False)"
    trans: "Generate level of detail X from X-1. By default, all\\nlevels of detail are generated from the original HAL\\n(X=0) (default: False)"
    in_memory: "Load entire hdf5 arrays into memory, overriding cache.\\n(default: False)"
    probe_frac: "Fraction of bases in step-interval to sample while\\nlooking for most aligned column. Use default from\\nhalLodExtract if not set. To see default value, use\\nhalLodExtract --help (default: None)"
    min_seq_frac: "Minumum sequence length to sample as fraction of step\\nsize: ie sequences with length <= floor(minSeqFrac *\\nstep) are ignored.Use default from halLodExtract if\\nnot set. To see default value, use halLodExtract\\n--help (default: 0.5)"
    min_cov_frac: "Minimum fraction of a genome that must be covered by\\nsequences that exceed --minSeqFrac * step. LODs that\\nwould violate this threshold will not be generated (or\\ndisplayed in the browser). This is seen a better than\\nthe alternative, which is to produce unreasonably\\nsparse LODs because half the sequences were not\\nsampled (default: 0.9)"
    scale_cor_fac: "Correction factor for scaling. Assume that scaling by\\n(X * scaleCorFactor) is required to reduce the number\\nof blocks by X. (default: 1.0)"
    num_proc: "Number of concurrent processes (default: 1)"
    chunk: "Chunk size of output hal files. (default: None)"
    min_lod_zero: "Override other parameters to ensure that Lod0\\n(original hal) gets range from 0 to at least the\\nspecified value (default: 0)"
    cut_off: "Cut-off fraction for determining highest level of\\ndetail. Normally, --maxBlocks is used to determine the\\nstep-size for each LOD, but the exponential scaling\\ncan cause this to create final (highest) LODs that are\\ntoo sparse. The lowerthis parameter is (must stay >\\n0), the sooner the LOD generation process will be cut\\noff, and the more fine-grained the highest LOD will be\\n(default: 0.75)\\n"
    hal: "input hal"
    out_lod_file: "output text file with links to interpolated hal files.\\nwith each file is associated a value stating its\\nminimum suggested query range (in bases)"
  }
  output {
    File out_stdout = stdout()
  }
}