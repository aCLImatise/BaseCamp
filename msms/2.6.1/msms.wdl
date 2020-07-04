version 1.0

task Msms {
  input {
    Float? probe_radius
    Float? density
    Float? h_density
    Boolean? surface
    Boolean? no_area
    String? socket_name
    String? socket_port
    Boolean? xdr
    Boolean? s_inetd
    Boolean? noh
    Boolean? no_rest_on_pbr
    Boolean? no_rest
    File? sphere_input_file
    File? of
    File? af
    Boolean? no_header
    Boolean? free_vertices
    Boolean? all_components
    Boolean? one_cavity
  }
  command <<<
    msms \
      ~{if defined(probe_radius) then ("-probe_radius " +  '"' + probe_radius + '"') else ""} \
      ~{if defined(density) then ("-density " +  '"' + density + '"') else ""} \
      ~{if defined(h_density) then ("-hdensity " +  '"' + h_density + '"') else ""} \
      ~{true="-surface" false="" surface} \
      ~{true="-no_area" false="" no_area} \
      ~{if defined(socket_name) then ("-socketName " +  '"' + socket_name + '"') else ""} \
      ~{if defined(socket_port) then ("-socketPort " +  '"' + socket_port + '"') else ""} \
      ~{true="-xdr" false="" xdr} \
      ~{true="-sinetd" false="" s_inetd} \
      ~{true="-noh" false="" noh} \
      ~{true="-no_rest_on_pbr" false="" no_rest_on_pbr} \
      ~{true="-no_rest" false="" no_rest} \
      ~{if defined(sphere_input_file) then ("-if " +  '"' + sphere_input_file + '"') else ""} \
      ~{if defined(of) then ("-of " +  '"' + of + '"') else ""} \
      ~{if defined(af) then ("-af " +  '"' + af + '"') else ""} \
      ~{true="-no_header" false="" no_header} \
      ~{true="-free_vertices" false="" free_vertices} \
      ~{true="-all_components" false="" all_components} \
      ~{true="-one_cavity" false="" one_cavity}
  >>>
  parameter_meta {
    probe_radius: ": probe sphere radius, [1.5]"
    density: ": surface points density, [1.0]"
    h_density: ": surface points high density, [3.0]"
    surface: "<tses,ases>: triangulated or Analytical SES, [tses]"
    no_area: ": turns off the analytical surface area computation"
    socket_name: ": socket connection from a client"
    socket_port: ": socket connection from a client"
    xdr: ": use xdr encoding over socket"
    s_inetd: ": inetd server connection"
    noh: ": ignore atoms with radius 1.2"
    no_rest_on_pbr: ": no restart if pb. during triangulation"
    no_rest: ": no restart if pb. are encountered"
    sphere_input_file: ": sphere input file"
    of: ": output for triangulated surface"
    af: ": area file"
    no_header: ": do not add comment line to the output"
    free_vertices: ": turns on computation for isolated RS vertices"
    all_components: ": compute all the surfaces components"
    one_cavity: "#atoms at1 [at2][at3] : Compute the surface for an internal                        cavity for which at least one atom is specified"
  }
}