version 1.0

task TigmintMolecule {
  input {
    File? output_tsv_file
    File? out_bam
    Boolean? bed
    Boolean? tsv
    String? dist
    String? reads
    String? mapq
    String? as_ratio
    String? nm
    String? size
    String bam
  }
  command <<<
    tigmint-molecule \
      ~{bam} \
      ~{if defined(output_tsv_file) then ("--output " +  '"' + output_tsv_file + '"') else ""} \
      ~{if defined(out_bam) then ("--out-bam " +  '"' + out_bam + '"') else ""} \
      ~{true="--bed" false="" bed} \
      ~{true="--tsv" false="" tsv} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(as_ratio) then ("--as-ratio " +  '"' + as_ratio + '"') else ""} \
      ~{if defined(nm) then ("--nm " +  '"' + nm + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""}
  >>>
  parameter_meta {
    output_tsv_file: "Output TSV file [stdout]"
    out_bam: "Output BAM file with MI tags (optional)"
    bed: "Output in BED format [default]"
    tsv: "Output in TSV format"
    dist: "Maximum distance between reads in the same molecule [50000]"
    reads: "Minimum number of reads per molecule (duplicates are filtered out) [4]"
    mapq: "Minimum mapping quality [0]"
    as_ratio: "Minimum ratio of alignment score (AS) over read length [0.65]"
    nm: "Maximum number of mismatches (NM) [5]"
    size: "Minimum molecule size [2000]"
    bam: "Input BAM file sorted by BX tag then position, - for stdin"
  }
}