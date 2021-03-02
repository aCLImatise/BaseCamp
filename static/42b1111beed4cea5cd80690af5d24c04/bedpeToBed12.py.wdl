version 1.0

task BedpeToBed12py {
  input {
    File? bed_pe
    String? name
    Int? max_dist
  }
  command <<<
    bedpeToBed12_py \
      ~{if defined(bed_pe) then ("--bedpe " +  '"' + bed_pe + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(max_dist) then ("--maxdist " +  '"' + max_dist + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    bed_pe: "BEDPE input file"
    name: "The name of the track.  Default is 'BEDPE'."
    max_dist: "The minimum distance for drawing intrachromosomal\\nfeatures as if they are interchromosomal (i.e.,\\nwithout a line spanning the two footprints). Default\\nis 1Mb.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}