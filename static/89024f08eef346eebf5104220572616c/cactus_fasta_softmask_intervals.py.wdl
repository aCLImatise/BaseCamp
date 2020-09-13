version 1.0

task CactusFastaSoftmaskIntervalspy {
  input {
    String? chrom
    String? origin
    Int? wrap
    String? mask
    Boolean? unmask
  }
  command <<<
    cactus_fasta_softmask_intervals_py \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(origin) then ("--origin " +  '"' + origin + '"') else ""} \
      ~{if defined(wrap) then ("--wrap " +  '"' + wrap + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if (unmask) then "--unmask" else ""}
  >>>
  parameter_meta {
    chrom: "copy (and mask) only the specified sequence(s)\\n<sequence_names> is a comma-separated list\\n(default is to copy and mask all sequences)"
    origin: "intervals are origin-one, closed\\n(default is origin-zero, half-open)"
    wrap: "split each sequence into multiple lines if needed\\n(default is to write sequence on a single line)"
    mask: "mask with a particular character (usually X or N)\\n(default is to mask with lowercase)"
    unmask: "remove any previous softmasking from sequence being masked (covert to upper case\\nbefore masking)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}