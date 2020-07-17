version 1.0

task Gretel {
  input {
    String? start
    String? end
    File? paths
    String? master
    String? gap_char
    String? del_char
    Boolean? quiet
    String? out
    String? threads
    String? debug_reads
    String? debug_pos
    String? debug_hp_os
    String? dump_matrix
    String? dump_snps
    Boolean? pepper
  }
  command <<<
    gretel \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(paths) then ("--paths " +  '"' + paths + '"') else ""} \
      ~{if defined(master) then ("--master " +  '"' + master + '"') else ""} \
      ~{if defined(gap_char) then ("--gapchar " +  '"' + gap_char + '"') else ""} \
      ~{if defined(del_char) then ("--delchar " +  '"' + del_char + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(debug_reads) then ("--debugreads " +  '"' + debug_reads + '"') else ""} \
      ~{if defined(debug_pos) then ("--debugpos " +  '"' + debug_pos + '"') else ""} \
      ~{if defined(debug_hp_os) then ("--debughpos " +  '"' + debug_hp_os + '"') else ""} \
      ~{if defined(dump_matrix) then ("--dumpmatrix " +  '"' + dump_matrix + '"') else ""} \
      ~{if defined(dump_snps) then ("--dumpsnps " +  '"' + dump_snps + '"') else ""} \
      ~{true="--pepper" false="" pepper}
  >>>
  parameter_meta {
    start: "1-indexed included start base position [default: 1]"
    end: "1-indexed inlcuded end base position [default: reference length]"
    paths: "Maximum number of paths to generate [default:100]"
    master: "Master sequence (will be used to fill in homogeneous gaps in haplotypes, otherwise --gapchar)"
    gap_char: "Character to fill homogeneous gaps in haplotypes if no --master [default N]"
    del_char: "Character to output in haplotype for deletion (eg. -) [default is blank]"
    quiet: "Don't output anything other than a single summary line."
    out: "Output directory [default .]"
    threads: "Number of BAM iterators [default 1]"
    debug_reads: "A newline delimited list of read names to output debug data when parsing the BAM"
    debug_pos: "A newline delimited list of 1-indexed genomic positions to output debug data when parsing the BAM"
    debug_hp_os: "A comma delimited list of 1-indexed SNP positions to output debug data when predicting haplotypes"
    dump_matrix: "Location to dump the Hansel matrix to disk"
    dump_snps: "Location to dump the SNP positions to disk"
    pepper: "enable a more permissive pileup by setting the pysam pileup stepper to 'all', instead of 'samtools'. Note that this will allow improper pairs."
  }
}