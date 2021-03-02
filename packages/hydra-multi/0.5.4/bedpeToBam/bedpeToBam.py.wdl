version 1.0

task BedpeToBampy {
  input {
    File? bed_pe
    Int? max_dist
    File? genome
    File? out
    String? n
  }
  command <<<
    bedpeToBam_py \
      ~{if defined(bed_pe) then ("--bedpe " +  '"' + bed_pe + '"') else ""} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    bed_pe: "BEDPE input file"
    max_dist: "The minimum distance for drawing intrachromosomal\\nfeatures as if they are interchromosomal (i.e.,\\nwithout a line spanning the two footprints). Default\\nis 1Mb."
    genome: "The BEDTools genome file"
    out: "The output file name\\n"
    n: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}