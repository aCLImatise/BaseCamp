version 1.0

task CactusFastaSoftmaskIntervals.py {
  input {
    String? chrom
    String? origin
    String? wrap
    String? mask
    Boolean? unmask
  }
  command <<<
    cactus_fasta_softmask_intervals.py \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(origin) then ("--origin " +  '"' + origin + '"') else ""} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{true="--unmask" false="" unmask}
  >>>
  parameter_meta {
    chrom: "copy (and mask) only the specified sequence(s) <sequence_names> is a comma-separated list (default is to copy and mask all sequences)"
    origin: "intervals are origin-one, closed (default is origin-zero, half-open)"
    wrap: "split each sequence into multiple lines if needed (default is to write sequence on a single line)"
    mask: "mask with a particular character (usually X or N) (default is to mask with lowercase)"
    unmask: "remove any previous softmasking from sequence being masked (covert to upper case before masking)                       "
  }
}