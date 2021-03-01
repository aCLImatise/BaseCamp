version 1.0

task Snippycore {
  input {
    Boolean? debug
    Boolean? check
    String? ref
    String? prefix
    Int? max_hap
    File? mask
    String? gap_char
    String? mask_char
    String? in_prefix
  }
  command <<<
    snippy_core \
      ~{if (debug) then "--debug" else ""} \
      ~{if (check) then "--check" else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(max_hap) then ("--maxhap " +  '"' + max_hap + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(gap_char) then ("--gap-char " +  '"' + gap_char + '"') else ""} \
      ~{if defined(mask_char) then ("--mask-char " +  '"' + mask_char + '"') else ""} \
      ~{if defined(in_prefix) then ("--inprefix " +  '"' + in_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "!        Output verbose debug info (default '0')."
    check: "!        Check dependencies and exit (default '0')."
    ref: "Reference in FASTA or GENBANK (default '')."
    prefix: "Output prefix (default 'core')."
    max_hap: "Largest haplotype to decompose (default '100')."
    mask: "BED file of sites to mask (default '')."
    gap_char: "Gap/deletion character (default '-')."
    mask_char: "Masking character (default 'X')."
    in_prefix: "Expected prefix of Snippy output files (default 'snps')."
  }
  output {
    File out_stdout = stdout()
  }
}