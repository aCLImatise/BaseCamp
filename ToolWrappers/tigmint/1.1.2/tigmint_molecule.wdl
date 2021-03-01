version 1.0

task Tigmintmolecule {
  input {
    File? output_tsv_file
    File? out_bam
    Boolean? bed
    Boolean? tsv
    Int? dist
    Int? reads
    Int? mapq
    Int? as_ratio
    Int? nm
    Int? size
    String stdin
  }
  command <<<
    tigmint_molecule \
      ~{stdin} \
      ~{if defined(output_tsv_file) then ("--output " +  '"' + output_tsv_file + '"') else ""} \
      ~{if defined(out_bam) then ("--out-bam " +  '"' + out_bam + '"') else ""} \
      ~{if (bed) then "--bed" else ""} \
      ~{if (tsv) then "--tsv" else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(as_ratio) then ("--as-ratio " +  '"' + as_ratio + '"') else ""} \
      ~{if defined(nm) then ("--nm " +  '"' + nm + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_tsv_file: "Output TSV file [stdout]"
    out_bam: "Output BAM file with MI tags (optional)"
    bed: "Output in BED format [default]"
    tsv: "Output in TSV format"
    dist: "Maximum distance between reads in the same molecule\\n[50000]"
    reads: "Minimum number of reads per molecule (duplicates are\\nfiltered out) [4]"
    mapq: "Minimum mapping quality [0]"
    as_ratio: "Minimum ratio of alignment score (AS) over read length\\n[0.65]"
    nm: "Maximum number of mismatches (NM) [5]"
    size: "Minimum molecule size [2000]"
    stdin: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_tsv_file = "${in_output_tsv_file}"
    File out_out_bam = "${in_out_bam}"
  }
}