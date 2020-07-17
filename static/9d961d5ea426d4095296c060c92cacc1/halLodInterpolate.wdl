version 1.0

task HalLodInterpolate.py {
  input {
    Int? max_block
    String? scale
    String? out_haldir
    Boolean? resume
    Int? max_dna
    Boolean? abs_path
    Boolean? trans
    Boolean? in_memory
    String? probe_frac
    Int? min_seq_frac
    Int? min_cov_frac
    String? scale_cor_fac
    String? num_proc
    String? chunk
    Int? min_lod_zero
    String? cut_off
    String hal
    String out_lod_file
  }
  command <<<
    halLodInterpolate.py \
      ~{hal} \
      ~{out_lod_file} \
      ~{if defined(max_block) then ("--maxBlock " +  '"' + max_block + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(out_haldir) then ("--outHalDir " +  '"' + out_haldir + '"') else ""} \
      ~{true="--resume" false="" resume} \
      ~{if defined(max_dna) then ("--maxDNA " +  '"' + max_dna + '"') else ""} \
      ~{true="--absPath" false="" abs_path} \
      ~{true="--trans" false="" trans} \
      ~{true="--inMemory" false="" in_memory} \
      ~{if defined(probe_frac) then ("--probeFrac " +  '"' + probe_frac + '"') else ""} \
      ~{if defined(min_seq_frac) then ("--minSeqFrac " +  '"' + min_seq_frac + '"') else ""} \
      ~{if defined(min_cov_frac) then ("--minCovFrac " +  '"' + min_cov_frac + '"') else ""} \
      ~{if defined(scale_cor_fac) then ("--scaleCorFac " +  '"' + scale_cor_fac + '"') else ""} \
      ~{if defined(num_proc) then ("--numProc " +  '"' + num_proc + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(min_lod_zero) then ("--minLod0 " +  '"' + min_lod_zero + '"') else ""} \
      ~{if defined(cut_off) then ("--cutOff " +  '"' + cut_off + '"') else ""}
  >>>
  parameter_meta {
    max_block: "maximum desired number of blocks to ever display at once. (default: 223)"
    scale: "scaling factor between two successive levels of detail (default: 2.5)"
    out_haldir: "path of directory where interpolated hal files are stored. By default they will be stored in the same directory as the input file (default: None)"
    resume: "do not overwrite existing hal lod files if they exist. (default: False)"
    max_dna: "maximum DNA sequence query. Generated levels of detail with associated minimum query ranges > maxDNA will not contain sequence information. -1 can be used to specify that all levels will get sequence (default: 0)"
    abs_path: "write absolute path of created HAL files in the outLodFile. By default, the paths are relative to the path of the outLodFile. (default: False)"
    trans: "Generate level of detail X from X-1. By default, all levels of detail are generated from the original HAL (X=0) (default: False)"
    in_memory: "Load entire hdf5 arrays into memory, overriding cache. (default: False)"
    probe_frac: "Fraction of bases in step-interval to sample while looking for most aligned column. Use default from halLodExtract if not set. To see default value, use halLodExtract --help (default: None)"
    min_seq_frac: "Minumum sequence length to sample as fraction of step size: ie sequences with length <= floor(minSeqFrac * step) are ignored.Use default from halLodExtract if not set. To see default value, use halLodExtract --help (default: 0.5)"
    min_cov_frac: "Minimum fraction of a genome that must be covered by sequences that exceed --minSeqFrac * step. LODs that would violate this threshold will not be generated (or displayed in the browser). This is seen a better than the alternative, which is to produce unreasonably sparse LODs because half the sequences were not sampled (default: 0.9)"
    scale_cor_fac: "Correction factor for scaling. Assume that scaling by (X * scaleCorFactor) is required to reduce the number of blocks by X. (default: 1.0)"
    num_proc: "Number of concurrent processes (default: 1)"
    chunk: "Chunk size of output hal files. (default: None)"
    min_lod_zero: "Override other parameters to ensure that Lod0 (original hal) gets range from 0 to at least the specified value (default: 0)"
    cut_off: "Cut-off fraction for determining highest level of detail. Normally, --maxBlocks is used to determine the step-size for each LOD, but the exponential scaling can cause this to create final (highest) LODs that are too sparse. The lowerthis parameter is (must stay > 0), the sooner the LOD generation process will be cut off, and the more fine-grained the highest LOD will be (default: 0.75)"
    hal: "input hal"
    out_lod_file: "output text file with links to interpolated hal files. with each file is associated a value stating its minimum suggested query range (in bases)"
  }
}