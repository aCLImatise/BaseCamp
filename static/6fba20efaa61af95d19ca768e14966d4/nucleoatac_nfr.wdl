version 1.0

task NucleoatacNfr {
  input {
    File? bed
    File? occ_track
    File? calls
    File? ins_track
    File? bam
    File? fast_a
    Int? pwm
    Int? cores
    Float? max_occ
    Float? max_occ_upper
    String optional
  }
  command <<<
    nucleoatac nfr \
      ~{optional} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(occ_track) then ("--occ_track " +  '"' + occ_track + '"') else ""} \
      ~{if defined(calls) then ("--calls " +  '"' + calls + '"') else ""} \
      ~{if defined(ins_track) then ("--ins_track " +  '"' + ins_track + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(pwm) then ("--pwm " +  '"' + pwm + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(max_occ) then ("--max_occ " +  '"' + max_occ + '"') else ""} \
      ~{if defined(max_occ_upper) then ("--max_occ_upper " +  '"' + max_occ_upper + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "Peaks in bed format"
    occ_track: "bgzip compressed, tabix-indexed bedgraph file with\\nocccupancy track."
    calls: "bed file with nucleosome center calls"
    ins_track: "bgzip compressed, tabix-indexed bedgraph file with\\ninsertion track. will be generated if not included"
    bam: "Sorted (and indexed) BAM file"
    fast_a: "Indexed fasta file"
    pwm: "PWM descriptor file. Default is Human.PWM.txt included\\nin package"
    cores: "Number of cores to use"
    max_occ: "Maximum mean occupancy for NFR. Default is 0.1"
    max_occ_upper: "Maximum for minimum of upper bound occupancy in NFR.\\nDefault is 0.25\\n"
    optional: "--out out_basename    output file basename"
  }
  output {
    File out_stdout = stdout()
  }
}