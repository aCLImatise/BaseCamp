version 1.0

task NucleoatacOcc {
  input {
    String? bed
    String? bam
    String? out
    String? fast_a
    String? pwm
    String? sizes
    Int? cores
    Int? upper
    Int? flank
    Float? min_occ
    Int? nuc_sep
    Float? confidence_interval
    Int? step
  }
  command <<<
    nucleoatac occ \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(pwm) then ("--pwm " +  '"' + pwm + '"') else ""} \
      ~{if defined(sizes) then ("--sizes " +  '"' + sizes + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(upper) then ("--upper " +  '"' + upper + '"') else ""} \
      ~{if defined(flank) then ("--flank " +  '"' + flank + '"') else ""} \
      ~{if defined(min_occ) then ("--min_occ " +  '"' + min_occ + '"') else ""} \
      ~{if defined(nuc_sep) then ("--nuc_sep " +  '"' + nuc_sep + '"') else ""} \
      ~{if defined(confidence_interval) then ("--confidence_interval " +  '"' + confidence_interval + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""}
  >>>
  parameter_meta {
    bed: "Peaks in bed format"
    bam: "Sorted (and indexed) BAM file"
    out: "give output basename"
    fast_a: "Indexed fasta file"
    pwm: "PWM descriptor file. Default is Human.PWM.txt included in package"
    sizes: "File with fragment size distribution. Use if don't want calculation of fragment size"
    cores: "Number of cores to use"
    upper: "upper limit in insert size. default is 251"
    flank: "Distance on each side of dyad to include for local occ calculation. Default is 60."
    min_occ: "Occupancy cutoff for determining nucleosome distribution. Default is 0.1"
    nuc_sep: "minimum separation between occupany peaks. Default is 120."
    confidence_interval: "confidence interval level for lower and upper bounds. default is 0.9, should be between 0 and 1"
    step: "step size along genome for comuting occ. Default is 5. Should be odd, or will be subtracted by 1"
  }
}