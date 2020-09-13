version 1.0

task Msms {
  input {
    Float? probe_radius
    Float? density
    Float? h_density
    Boolean? surface
    Boolean? no_area
    String? socket_name
    Int? socket_port
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
      ~{if (surface) then "-surface" else ""} \
      ~{if (no_area) then "-no_area" else ""} \
      ~{if defined(socket_name) then ("-socketName " +  '"' + socket_name + '"') else ""} \
      ~{if defined(socket_port) then ("-socketPort " +  '"' + socket_port + '"') else ""} \
      ~{if (xdr) then "-xdr" else ""} \
      ~{if (s_inetd) then "-sinetd" else ""} \
      ~{if (noh) then "-noh" else ""} \
      ~{if (no_rest_on_pbr) then "-no_rest_on_pbr" else ""} \
      ~{if (no_rest) then "-no_rest" else ""} \
      ~{if defined(sphere_input_file) then ("-if " +  '"' + sphere_input_file + '"') else ""} \
      ~{if defined(of) then ("-of " +  '"' + of + '"') else ""} \
      ~{if defined(af) then ("-af " +  '"' + af + '"') else ""} \
      ~{if (no_header) then "-no_header" else ""} \
      ~{if (free_vertices) then "-free_vertices" else ""} \
      ~{if (all_components) then "-all_components" else ""} \
      ~{if (one_cavity) then "-one_cavity" else ""}
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
  output {
    File out_stdout = stdout()
  }
}