version 1.0

task SketchyRun {
  input {
    File? fast_q
    File? sketch
    Int? ranks
    File? outdir
    String? prefix
    Int? limit
    String? palette
    Int? stable
    Int? threads
    File? home
    Boolean? quiet
  }
  command <<<
    sketchy run \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(sketch) then ("--sketch " +  '"' + sketch + '"') else ""} \
      ~{if defined(ranks) then ("--ranks " +  '"' + ranks + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(palette) then ("--palette " +  '"' + palette + '"') else ""} \
      ~{if defined(stable) then ("--stable " +  '"' + stable + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(home) then ("--home " +  '"' + home + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fast_q: "Path to input Fastq containing basecalled nanopore reads  [required]"
    sketch: "Path to reference sketch local files or species template  [required]"
    ranks: "Output highest ranking sum of shared hashes [10]"
    outdir: "Output directory for data and plots [sketchy]"
    prefix: "Prefix for output files [sketchy]."
    limit: "Maximum number of reads to predict on [all]"
    palette: "Brewer color palette for plots [YlGnBu]"
    stable: "Stability parameter to compute stable breakpoints, in reads [1000]"
    threads: "Threads for sketch queries in Mash [4]"
    home: "Sketchy path to reference sketch home directory. Can be set via environmental variable: SKETCHY_PATH"
    quiet: "Run without logging output or progress bar."
  }
}