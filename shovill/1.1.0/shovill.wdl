version 1.0

task Shovill {
  input {
    Boolean? check
    Int? r_one
    Int? r_two
    Int? depth
    Int? g_size
    Directory? outdir
    Directory? force
    Int? min_len
    Int? min_cov
    Int? name_fmt
    Boolean? keep_files
    Directory? tmpdir
    Int? cpus
    Float? ram
    String? assembler
    String? opts
    String? km_ers
    Boolean? trim
    Boolean? no_read_corr
    Boolean? no_stitch
    Boolean? no_corr
  }
  command <<<
    shovill \
      ~{if (check) then "--check" else ""} \
      ~{if defined(r_one) then ("--R1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("--R2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(g_size) then ("--gsize " +  '"' + g_size + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(name_fmt) then ("--namefmt " +  '"' + name_fmt + '"') else ""} \
      ~{if (keep_files) then "--keepfiles" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(ram) then ("--ram " +  '"' + ram + '"') else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if defined(opts) then ("--opts " +  '"' + opts + '"') else ""} \
      ~{if defined(km_ers) then ("--kmers " +  '"' + km_ers + '"') else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (no_read_corr) then "--noreadcorr" else ""} \
      ~{if (no_stitch) then "--nostitch" else ""} \
      ~{if (no_corr) then "--nocorr" else ""}
  >>>
  parameter_meta {
    check: "Check dependencies are installed"
    r_one: "Read 1 FASTQ (default: '')"
    r_two: "Read 2 FASTQ (default: '')"
    depth: "Sub-sample --R1/--R2 to this depth. Disable with --depth 0 (default: 150)"
    g_size: "Estimated genome size eg. 3.2M <blank=AUTODETECT> (default: '')"
    outdir: "Output folder (default: '')"
    force: "Force overwite of existing output folder (default: OFF)"
    min_len: "Minimum contig length <0=AUTO> (default: 0)"
    min_cov: "Minimum contig coverage <0=AUTO> (default: 2)"
    name_fmt: "Format of contig FASTA IDs in 'printf' style (default: 'contig%05d')"
    keep_files: "Keep intermediate files (default: OFF)"
    tmpdir: "Fast temporary directory (default: '')"
    cpus: "Number of CPUs to use (0=ALL) (default: 1)"
    ram: "Try to keep RAM usage below this many GB (default: 15.64)"
    assembler: "Assembler: skesa spades velvet megahit (default: 'spades')"
    opts: "Extra assembler options in quotes eg. spades: '--sc' (default: '')"
    km_ers: "K-mers to use <blank=AUTO> (default: '')"
    trim: "Enable adaptor trimming (default: OFF)"
    no_read_corr: "Disable read error correction (default: OFF)"
    no_stitch: "Disable read stitching (default: OFF)"
    no_corr: "Disable post-assembly correction (default: OFF)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    Directory out_force = "${in_force}"
  }
}