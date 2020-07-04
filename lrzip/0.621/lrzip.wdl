version 1.0

task Lrzip {
  input {
    Boolean? check
    Boolean? decompress
    Boolean? encrypt
    Boolean? hash
    Boolean? info
    Boolean? quiet
    Boolean? test
    Boolean? _verbose_increase
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
    String? level
    String? nice_level
    String? threads
    Int? max_ram
    Boolean? threshold
    Boolean? unlimited
    Int? window
    File file_dot_dot_dot
  }
  command <<<
    lrzip \
      ~{file_dot_dot_dot} \
      ~{true="--check" false="" check} \
      ~{true="--decompress" false="" decompress} \
      ~{true="--encrypt" false="" encrypt} \
      ~{true="--hash" false="" hash} \
      ~{true="--info" false="" info} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--test" false="" test} \
      ~{true="-v" false="" _verbose_increase} \
      ~{true="--delete" false="" delete} \
      ~{true="--force" false="" force} \
      ~{true="--keep-broken" false="" keep_broken} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{true="--bzip2" false="" bzip_two} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--lzo" false="" lzo} \
      ~{true="--no-compress" false="" no_compress} \
      ~{true="--zpaq" false="" z_paq} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(nice_level) then ("--nice-level " +  '"' + nice_level + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(max_ram) then ("--maxram " +  '"' + max_ram + '"') else ""} \
      ~{true="--threshold" false="" threshold} \
      ~{true="--unlimited" false="" unlimited} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""}
  >>>
  parameter_meta {
    check: "check integrity of file written on decompression"
    decompress: "decompress"
    encrypt: "password protected sha512/aes128 encryption on compression"
    hash: "display md5 hash integrity information"
    info: "show compressed file information"
    quiet: "don't show compression progress"
    test: "test compressed file integrity"
    _verbose_increase: "[v], --verbose        Increase verbosity"
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
    max_ram: "Set maximim available ram in hundreds of MB overrides detected ammount of available ram"
    threshold: "Disable LZO compressibility testing"
    unlimited: "Use unlimited window size beyond ramsize (potentially much slower)"
    window: "maximum compression window in hundreds of MB default chosen by heuristic dependent on ram and chosen compression"
    file_dot_dot_dot: ""
  }
}