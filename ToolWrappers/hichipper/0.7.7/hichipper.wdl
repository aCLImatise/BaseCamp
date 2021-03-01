version 1.0

task Hichipper {
  input {
    Directory? out
    Boolean? keep_temp_files
    String? input_vi
    File? restriction_frags
    File? peaks
    String? keep_samples
    String? ignore_samples
    Int? read_length
    Int? min_dist
    Int? macs_two_genome
    Int? peak_pad
    Int? merge_gap
    Boolean? no_merge
    Boolean? skip_res_frag_pad
    Boolean? skip_background_correction
    Boolean? make_ucsc
    Boolean? make_washu
    Boolean? basic_qc
    Boolean? skip_diff_loop
    File? bed_tools_path
    File? macs_two_path
    File? tab_ix_path
    File? b_gzip_path
    File? r_path
    Int ma__maxdist
    Int _macsstring_text
    File path
  }
  command <<<
    hichipper \
      ~{ma__maxdist} \
      ~{_macsstring_text} \
      ~{path} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (keep_temp_files) then "--keep-temp-files" else ""} \
      ~{if defined(input_vi) then ("--input-vi " +  '"' + input_vi + '"') else ""} \
      ~{if defined(restriction_frags) then ("--restriction-frags " +  '"' + restriction_frags + '"') else ""} \
      ~{if defined(peaks) then ("--peaks " +  '"' + peaks + '"') else ""} \
      ~{if defined(keep_samples) then ("--keep-samples " +  '"' + keep_samples + '"') else ""} \
      ~{if defined(ignore_samples) then ("--ignore-samples " +  '"' + ignore_samples + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(min_dist) then ("--min-dist " +  '"' + min_dist + '"') else ""} \
      ~{if defined(macs_two_genome) then ("--macs2-genome " +  '"' + macs_two_genome + '"') else ""} \
      ~{if defined(peak_pad) then ("--peak-pad " +  '"' + peak_pad + '"') else ""} \
      ~{if defined(merge_gap) then ("--merge-gap " +  '"' + merge_gap + '"') else ""} \
      ~{if (no_merge) then "--no-merge" else ""} \
      ~{if (skip_res_frag_pad) then "--skip-resfrag-pad" else ""} \
      ~{if (skip_background_correction) then "--skip-background-correction" else ""} \
      ~{if (make_ucsc) then "--make-ucsc" else ""} \
      ~{if (make_washu) then "--make-washu" else ""} \
      ~{if (basic_qc) then "--basic-qc" else ""} \
      ~{if (skip_diff_loop) then "--skip-diffloop" else ""} \
      ~{if defined(bed_tools_path) then ("--bedtools-path " +  '"' + bed_tools_path + '"') else ""} \
      ~{if defined(macs_two_path) then ("--macs2-path " +  '"' + macs_two_path + '"') else ""} \
      ~{if defined(tab_ix_path) then ("--tabix-path " +  '"' + tab_ix_path + '"') else ""} \
      ~{if defined(b_gzip_path) then ("--bgzip-path " +  '"' + b_gzip_path + '"') else ""} \
      ~{if defined(r_path) then ("--r-path " +  '"' + r_path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "Output directory name; must not be already\\nexisting [Required]  [required]"
    keep_temp_files: "Keep temporary files?"
    input_vi: "Comma-separted list of interactions files for\\nloop calling; option valid only in `call`\\nmode"
    restriction_frags: "Filepath to restriction fragment files; will\\noverwrite specification of this file when a\\n.yaml is supplied for mode"
    peaks: "Either 1 of 4 peak logic strings or a valid\\nfilepath to a .bed (or similary formatted)\\nfile; defers to what is in the .yaml"
    keep_samples: "Comma separated list of sample names to keep;\\nALL (special string) by default"
    ignore_samples: "Comma separated list of sample names to\\nignore; NONE (special string) by default"
    read_length: "Length of reads from sequencing runs; default\\n= 75"
    min_dist: "Minimum distance for loop calls; default ="
    macs_two_genome: "Argument to pass to the -g variable in MACS2\\n(mm for mouse genome; hs for human genome);\\ndefault = \\\"hs\\\""
    peak_pad: "Peak padding width (applied on both left and\\nright); default = 500"
    merge_gap: "Merge nearby peaks (after all padding is\\ncomplete; default = 500"
    no_merge: "Completely skip anchor merging; will affect\\nsummary statistics. Not recommended unless\\nunderstood what is happening."
    skip_res_frag_pad: "Skip restriction fragment aware padding"
    skip_background_correction: "Skip restriction fragment aware background\\ncorrection?"
    make_ucsc: "Make additional output files that can support\\nviewing in UCSC genome browser; requires\\ntabix and bgzip; does the same thing as\\n--make-washu."
    make_washu: "Make additional output files that can support\\nviewing in WashU genome browser; requires\\ntabix and bgzip; does the same thing as\\n--make-ucsc."
    basic_qc: "Create a simple QC report without Pandoc"
    skip_diff_loop: "Skip analyses in diffloop (e.g. Mango loop\\ncalling; .rds generation)"
    bed_tools_path: "Path to bedtools; by default, assumes that\\nbedtools is in PATH"
    macs_two_path: "Path to macs2; by default, assumes that macs2\\nis in PATH"
    tab_ix_path: "Path to samtools; by default, assumes that\\ntabix is in PATH"
    b_gzip_path: "Path to macs2; by default, assumes that bgzip\\nis in PATH"
    r_path: "Path to R; by default, assumes that R is in"
    ma__maxdist: "-ma, --max-dist TEXT           Maximum distance for loop calls; default ="
    _macsstring_text: "--macs2-string TEXT            String of arguments to pass to MACS2; only is"
    path: "--help                         Show this message and exit."
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}