version 1.0

task Metatwist {
  input {
    File? dx
    Int? mapping_type_rdf
    Int? bin
    Int? rmax
    Int? zmax
    Int? ymax
    Int? xmax
    Float? ut_rate
    String? com
    Int? resolution
    Int? bulk_dens
    String? species
    Int? sigma
    Int? threshold
    Int? convolve
    File? od_x
    File? ldx
    Boolean? n_log
    Boolean? laplacian
    Boolean? average
    Int two_one_dot
  }
  command <<<
    metatwist \
      ~{two_one_dot} \
      ~{if defined(dx) then ("--dx " +  '"' + dx + '"') else ""} \
      ~{if defined(mapping_type_rdf) then ("--map " +  '"' + mapping_type_rdf + '"') else ""} \
      ~{if defined(bin) then ("--bin " +  '"' + bin + '"') else ""} \
      ~{if defined(rmax) then ("--rmax " +  '"' + rmax + '"') else ""} \
      ~{if defined(zmax) then ("--zmax " +  '"' + zmax + '"') else ""} \
      ~{if defined(ymax) then ("--ymax " +  '"' + ymax + '"') else ""} \
      ~{if defined(xmax) then ("--xmax " +  '"' + xmax + '"') else ""} \
      ~{if defined(ut_rate) then ("--utrate " +  '"' + ut_rate + '"') else ""} \
      ~{if defined(com) then ("--com " +  '"' + com + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(bulk_dens) then ("--bulkdens " +  '"' + bulk_dens + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(sigma) then ("--sigma " +  '"' + sigma + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(convolve) then ("--convolve " +  '"' + convolve + '"') else ""} \
      ~{if defined(od_x) then ("--odx " +  '"' + od_x + '"') else ""} \
      ~{if defined(ldx) then ("--ldx " +  '"' + ldx + '"') else ""} \
      ~{if (n_log) then "--nlog" else ""} \
      ~{if (laplacian) then "--laplacian" else ""} \
      ~{if (average) then "--average" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dx: "Input density file(s): *.dx(gz,bz2)|*.ccp4."
    mapping_type_rdf: "Mapping type:\\n~ cylindrical (1D): cylindrical RDF along z-axis.\\n~ twist (2D): twisted helical map along z-axis.\\n~ untwist (2D): untwisted helical map along z-axis.\\n~ spherical (1D): spherical RDF.\\n~ projxyz: (1D) project 3D-map on x,y,z axes.\\n~ excess: excess number of particles.\\n~ blobs: Laplacian blob analysis.\\n~ blobsper: Laplacian blob analysis on a periodic 3D-map.\\n~ rhoel: Electron density using atomic form factors.\\n~ rhoelreal: Electron density using atomic densities.\\n~ cutresol: Cut 3D-map resolution range."
    bin: "(=0.1)        Bin size for re-sampling."
    rmax: "(=60)        Extent along the rho direction (cylindrical, spherical RDFs)."
    zmax: "(=70)        Extent in the z direction."
    ymax: "(=20)        Extent in the y direction."
    xmax: "(=20)        Extent in the x direction."
    ut_rate: "(=0.18587) Untwisting rate:\\n0.18587 rad/Ang - BDNA(default)\\n0.16870 rad/Ang - TDNA\\n0.25590 rad/Ang - ARNA."
    com: "COM coordinates."
    resolution: "Min and max resolution thresholds (default: 1.0 and 10.0 Ang)."
    bulk_dens: "(=1)     Bulk density (A^-3)."
    species: "Chemical species: atom, e.g. N, or atom & residue, e.g. O WAT )."
    sigma: "(=0)        Convolution sigma."
    threshold: "(=0)    Laplacian threshold."
    convolve: "(=4)     Convolution type\\n- (1) Gaussian\\n- (2) box\\n- (3) sinc\\n- (4) Laplacian of Gaussian."
    od_x: "Output density file (*.dx|*.ccp4)."
    ldx: "Input Laplacian file (*.dx|*.ccp4)."
    n_log: "Take the negative natural logarithm of the input density."
    laplacian: "Compute Laplacian, L[rho], of the input density using finite difference."
    average: "Average volumetric data, in case multiple datasets have been loaded.\\nOtherwise, data will be accumulated.\\n"
    two_one_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
    File out_od_x = "${in_od_x}"
  }
}