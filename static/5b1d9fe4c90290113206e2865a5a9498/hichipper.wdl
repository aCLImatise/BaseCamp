version 1.0

task Hichipper {
  input {
    String? out
    Boolean? keep_temp_files
    String? input_vi
    String? restriction_frags
    String? peaks
    String? keep_samples
    String? ignore_samples
    String? read_length
    String? min_dist
    String? max_dist
    String? macs_two_string
    String? macs_two_genome
    String? peak_pad
    String? merge_gap
    Boolean? no_merge
    Boolean? skip_res_frag_pad
    Boolean? skip_background_correction
    Boolean? make_ucsc
    Boolean? make_washu
    Boolean? basic_qc
    Boolean? skip_diff_loop
    String? bed_tools_path
    String? macs_two_path
    String? tab_ix_path
    String? b_gzip_path
    String? r_path
    String mode
  }
  command <<<
    hichipper \
      ~{mode} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--keep-temp-files" false="" keep_temp_files} \
      ~{if defined(input_vi) then ("--input-vi " +  '"' + input_vi + '"') else ""} \
      ~{if defined(restriction_frags) then ("--restriction-frags " +  '"' + restriction_frags + '"') else ""} \
      ~{if defined(peaks) then ("--peaks " +  '"' + peaks + '"') else ""} \
      ~{if defined(keep_samples) then ("--keep-samples " +  '"' + keep_samples + '"') else ""} \
      ~{if defined(ignore_samples) then ("--ignore-samples " +  '"' + ignore_samples + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(min_dist) then ("--min-dist " +  '"' + min_dist + '"') else ""} \
      ~{if defined(max_dist) then ("--max-dist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(macs_two_string) then ("--macs2-string " +  '"' + macs_two_string + '"') else ""} \
      ~{if defined(macs_two_genome) then ("--macs2-genome " +  '"' + macs_two_genome + '"') else ""} \
      ~{if defined(peak_pad) then ("--peak-pad " +  '"' + peak_pad + '"') else ""} \
      ~{if defined(merge_gap) then ("--merge-gap " +  '"' + merge_gap + '"') else ""} \
      ~{true="--no-merge" false="" no_merge} \
      ~{true="--skip-resfrag-pad" false="" skip_res_frag_pad} \
      ~{true="--skip-background-correction" false="" skip_background_correction} \
      ~{true="--make-ucsc" false="" make_ucsc} \
      ~{true="--make-washu" false="" make_washu} \
      ~{true="--basic-qc" false="" basic_qc} \
      ~{true="--skip-diffloop" false="" skip_diff_loop} \
      ~{if defined(bed_tools_path) then ("--bedtools-path " +  '"' + bed_tools_path + '"') else ""} \
      ~{if defined(macs_two_path) then ("--macs2-path " +  '"' + macs_two_path + '"') else ""} \
      ~{if defined(tab_ix_path) then ("--tabix-path " +  '"' + tab_ix_path + '"') else ""} \
      ~{if defined(b_gzip_path) then ("--bgzip-path " +  '"' + b_gzip_path + '"') else ""} \
      ~{if defined(r_path) then ("--r-path " +  '"' + r_path + '"') else ""}
  >>>
  parameter_meta {
    out: "Output directory name; must not be already existing [Required]  [required]"
    keep_temp_files: "Keep temporary files?"
    input_vi: "Comma-separted list of interactions files for loop calling; option valid only in `call` mode"
    restriction_frags: "Filepath to restriction fragment files; will overwrite specification of this file when a .yaml is supplied for mode"
    peaks: "Either 1 of 4 peak logic strings or a valid filepath to a .bed (or similary formatted) file; defers to what is in the .yaml"
    keep_samples: "Comma separated list of sample names to keep; ALL (special string) by default"
    ignore_samples: "Comma separated list of sample names to ignore; NONE (special string) by default"
    read_length: "Length of reads from sequencing runs; default = 75"
    min_dist: "Minimum distance for loop calls; default = 5000"
    max_dist: "Maximum distance for loop calls; default = 2000000"
    macs_two_string: "String of arguments to pass to MACS2; only is called when peaks are set to be called; default = \"-q 0.01 --extsize 147 --nomodel\""
    macs_two_genome: "Argument to pass to the -g variable in MACS2 (mm for mouse genome; hs for human genome); default = \"hs\""
    peak_pad: "Peak padding width (applied on both left and right); default = 500"
    merge_gap: "Merge nearby peaks (after all padding is complete; default = 500"
    no_merge: "Completely skip anchor merging; will affect summary statistics. Not recommended unless understood what is happening."
    skip_res_frag_pad: "Skip restriction fragment aware padding"
    skip_background_correction: "Skip restriction fragment aware background correction?"
    make_ucsc: "Make additional output files that can support viewing in UCSC genome browser; requires tabix and bgzip; does the same thing as --make-washu."
    make_washu: "Make additional output files that can support viewing in WashU genome browser; requires tabix and bgzip; does the same thing as --make-ucsc."
    basic_qc: "Create a simple QC report without Pandoc"
    skip_diff_loop: "Skip analyses in diffloop (e.g. Mango loop calling; .rds generation)"
    bed_tools_path: "Path to bedtools; by default, assumes that bedtools is in PATH"
    macs_two_path: "Path to macs2; by default, assumes that macs2 is in PATH"
    tab_ix_path: "Path to samtools; by default, assumes that tabix is in PATH"
    b_gzip_path: "Path to macs2; by default, assumes that bgzip is in PATH"
    r_path: "Path to R; by default, assumes that R is in PATH"
    mode: ""
  }
}