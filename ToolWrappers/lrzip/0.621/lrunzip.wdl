version 1.0

task Lrunzip {
  input {
    Boolean? check
    Boolean? decompress
    Boolean? encrypt
    Boolean? hash
    Boolean? info
    Boolean? quiet
    Boolean? test
    Boolean? _verbose_verbosity
    Boolean? delete
    Boolean? force
    Boolean? keep_broken
    File? outfile
    Directory? outdir
    String? suffix
    Boolean? bzip_two
    Boolean? gzip
    Boolean? lzo
    Boolean? no_compress
    Boolean? z_paq
    Int? level
    Int? nice_level
    Int? threads
    Int? max_ram
    Boolean? threshold
    Boolean? unlimited
    Int? window
    String lr_zip
    File file_dot_dot_dot
  }
  command <<<
    lrunzip \
      ~{lr_zip} \
      ~{file_dot_dot_dot} \
      ~{if (check) then "--check" else ""} \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if (encrypt) then "--encrypt" else ""} \
      ~{if (hash) then "--hash" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (_verbose_verbosity) then "-v" else ""} \
      ~{if (delete) then "--delete" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (keep_broken) then "--keep-broken" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (lzo) then "--lzo" else ""} \
      ~{if (no_compress) then "--no-compress" else ""} \
      ~{if (z_paq) then "--zpaq" else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(nice_level) then ("--nice-level " +  '"' + nice_level + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(max_ram) then ("--maxram " +  '"' + max_ram + '"') else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (unlimited) then "--unlimited" else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    check: "check integrity of file written on decompression"
    decompress: "decompress"
    encrypt: "password protected sha512/aes128 encryption on compression"
    hash: "display md5 hash integrity information"
    info: "show compressed file information"
    quiet: "don't show compression progress"
    test: "test compressed file integrity"
    _verbose_verbosity: "[v], --verbose        Increase verbosity"
    delete: "delete existing files"
    force: "force overwrite of any existing files"
    keep_broken: "keep broken or damaged output files"
    outfile: "specify the output file name and/or path"
    outdir: "specify the output directory when -o is not used"
    suffix: "specify compressed suffix (default '.lrz')"
    bzip_two: "bzip2 compression"
    gzip: "gzip compression using zlib"
    lzo: "lzo compression (ultra fast)"
    no_compress: "no backend compression - prepare for other compressor"
    z_paq: "zpaq compression (best, extreme compression, extremely slow)"
    level: "set lzma/bzip2/gzip compression level (1-9, default 7)"
    nice_level: "Set nice value to value (default 19)"
    threads: "Set processor count to override number of threads"
    max_ram: "Set maximim available ram in hundreds of MB\\noverrides detected ammount of available ram"
    threshold: "Disable LZO compressibility testing"
    unlimited: "Use unlimited window size beyond ramsize (potentially much slower)"
    window: "maximum compression window in hundreds of MB\\ndefault chosen by heuristic dependent on ram and chosen compression"
    lr_zip: ""
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    Directory out_outdir = "${in_outdir}"
  }
}