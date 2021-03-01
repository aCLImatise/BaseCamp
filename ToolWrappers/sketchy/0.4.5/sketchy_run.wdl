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
    Float? stable
    Int? threads
    File? home
    Boolean? quiet
    Boolean? no_plot
    String? mpl_backend
    String? image_format
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
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (no_plot) then "--no_plot" else ""} \
      ~{if defined(mpl_backend) then ("--mpl_backend " +  '"' + mpl_backend + '"') else ""} \
      ~{if defined(image_format) then ("--image_format " +  '"' + image_format + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0"
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
    no_plot: "Do not plot the results; output only table [false]"
    mpl_backend: "Use this Matplotlib backend [default]"
    image_format: "Use this image format [png]"
    reads: "[required]"
    template: "[required]"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}