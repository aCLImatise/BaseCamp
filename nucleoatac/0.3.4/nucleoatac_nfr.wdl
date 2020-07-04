version 1.0

task NucleoatacNfr {
  input {
    String? bed
    String? occ_track
    String? calls
    String? ins_track
    String? bam
    String? fast_a
    String? pwm
    String? out
    String? cores
    Float? max_occ
    Float? max_occ_upper
  }
  command <<<
    nucleoatac nfr \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(occ_track) then ("--occ_track " +  '"' + occ_track + '"') else ""} \
      ~{if defined(calls) then ("--calls " +  '"' + calls + '"') else ""} \
      ~{if defined(ins_track) then ("--ins_track " +  '"' + ins_track + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(pwm) then ("--pwm " +  '"' + pwm + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(max_occ) then ("--max_occ " +  '"' + max_occ + '"') else ""} \
      ~{if defined(max_occ_upper) then ("--max_occ_upper " +  '"' + max_occ_upper + '"') else ""}
  >>>
  parameter_meta {
    bed: "Peaks in bed format"
    occ_track: "bgzip compressed, tabix-indexed bedgraph file with occcupancy track."
    calls: "bed file with nucleosome center calls"
    ins_track: "bgzip compressed, tabix-indexed bedgraph file with insertion track. will be generated if not included"
    bam: "Sorted (and indexed) BAM file"
    fast_a: "Indexed fasta file"
    pwm: "PWM descriptor file. Default is Human.PWM.txt included in package"
    out: "output file basename"
    cores: "Number of cores to use"
    max_occ: "Maximum mean occupancy for NFR. Default is 0.1"
    max_occ_upper: "Maximum for minimum of upper bound occupancy in NFR. Default is 0.25"
  }
}