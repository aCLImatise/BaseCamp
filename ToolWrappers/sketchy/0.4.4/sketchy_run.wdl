version 1.0

task SketchyRun {
  input {
    File? fast_q
    File? sketch
    Int? ranks
    Directory? outdir
    String? prefix
    Int? limit
    String? palette
    Int? stable
    Int? threads
    File? home
    Boolean? quiet
    String reads
    String template
  }
  command <<<
    sketchy run \
      ~{reads} \
      ~{template} \
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
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "Path to input Fastq containing basecalled nanopore"
    sketch: "Path to reference sketch local files or species"
    ranks: "Output highest ranking sum of shared hashes [10]"
    outdir: "Output directory for data and plots [sketchy]"
    prefix: "Prefix for output files [sketchy]."
    limit: "Maximum number of reads to predict on [all]"
    palette: "Brewer color palette for plots [YlGnBu]"
    stable: "Stability parameter to compute stable breakpoints, in\\nreads [1000]"
    threads: "Threads for sketch queries in Mash [4]"
    home: "Sketchy path to reference sketch home directory. Can\\nbe set via environmental variable: SKETCHY_PATH"
    quiet: "Run without logging output or progress bar."
    reads: "[required]"
    template: "[required]"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}