version 1.0

task Gacutil2 {
  input {
    File? installs_assembly_global
    File? il
    Float? uninstalls_assembly_global
    File? ul
    File? us
    Boolean? lists_contents_cachewhen
    Directory? package
    Directory? gac_dir
    Directory? root
    Boolean? check_refs
    Boolean? mono_gacutil_ignores
    String? referenceid_descriptionthe_mono
    String gac_util_dot_exe
    String commands
    String? options
  }
  command <<<
    gacutil2 \
      ~{gac_util_dot_exe} \
      ~{commands} \
      ~{options} \
      ~{if defined(installs_assembly_global) then ("-i " +  '"' + installs_assembly_global + '"') else ""} \
      ~{if defined(il) then ("-il " +  '"' + il + '"') else ""} \
      ~{if defined(uninstalls_assembly_global) then ("-u " +  '"' + uninstalls_assembly_global + '"') else ""} \
      ~{if defined(ul) then ("-ul " +  '"' + ul + '"') else ""} \
      ~{if defined(us) then ("-us " +  '"' + us + '"') else ""} \
      ~{if (lists_contents_cachewhen) then "-l" else ""} \
      ~{if defined(package) then ("-package " +  '"' + package + '"') else ""} \
      ~{if defined(gac_dir) then ("-gacdir " +  '"' + gac_dir + '"') else ""} \
      ~{if defined(root) then ("-root " +  '"' + root + '"') else ""} \
      ~{if (check_refs) then "-check_refs" else ""} \
      ~{if (mono_gacutil_ignores) then "-f" else ""} \
      ~{if defined(referenceid_descriptionthe_mono) then ("-r " +  '"' + referenceid_descriptionthe_mono + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    installs_assembly_global: "[-check_refs] [-package NAME] [-root ROOTDIR] [-gacdir GACDIR]\\nInstalls an assembly into the global assembly cache.\\n<assembly_path> is the name of the file that contains the       assembly manifest\\nExample: -i myDll.dll"
    il: "[-check_refs] [-package NAME] [-root ROOTDIR] [-gacdir GACDIR]\\nInstalls one or more assemblies into the global assembly cache.\\n<assembly_list_file> is the path to a test file containing a list of\\nassembly file paths on separate lines.\\nExample -il assembly_list.txt\\nassembly_list.txt contents:\\nassembly1.dll\\nassembly2.dll"
    uninstalls_assembly_global: "[-package NAME] [-root ROOTDIR] [-gacdir GACDIR]\\nUninstalls an assembly from the global assembly cache.\\n<assembly_display_name> is the name of the assembly (partial or\\nfully qualified) to remove from the global assembly cache. If a\\npartial name is specified all matching assemblies will be uninstalled.\\nExample: -u myDll,Version=1.2.1.0"
    ul: "[-package NAME] [-root ROOTDIR] [-gacdir GACDIR]\\nUninstalls one or more assemblies from the global assembly cache.\\n<assembly_list_file> is the path to a test file containing a list of\\nassembly names on separate lines.\\nExample -ul assembly_list.txt\\nassembly_list.txt contents:\\nassembly1,Version=1.0.0.0,Culture=en,PublicKeyToken=0123456789abcdef\\nassembly2,Version=2.0.0.0,Culture=en,PublicKeyToken=0123456789abcdef"
    us: "[-package NAME] [-root ROOTDIR] [-gacdir GACDIR]\\nUninstalls an assembly using the specifed assemblies full name.\\n<assembly path> is the path to an assembly. The full assembly name\\nis retrieved from the specified assembly if there is an assembly in\\nthe GAC with a matching name, it is removed.\\nExample: -us myDll.dll"
    lists_contents_cachewhen: "[assembly_name] [-root ROOTDIR] [-gacdir GACDIR]\\nLists the contents of the global assembly cache.\\nWhen the <assembly_name> parameter is specified only matching\\nassemblies are listed."
    package: "Used to create a directory in prefix/lib/mono with the name NAME, and a\\nsymlink is created from NAME/assembly_name to the assembly on the GAC.\\nThis is used so developers can reference a set of libraries at once."
    gac_dir: "Used to specify the GACs base directory. Once an assembly has been installed\\nto a non standard gacdir the MONO_GAC_PREFIX environment variable must be used\\nto access the assembly."
    root: "Used by developers integrating this with automake tools or packaging tools\\nthat require a prefix directory to  be specified. The root represents the\\n\\\"libdir\\\" component of a prefix (typically prefix/lib)."
    check_refs: "Used to ensure that the assembly being installed into the GAC does not\\nreference any non strong named assemblies. Assemblies being installed to\\nthe GAC should not reference non strong named assemblies, however the is\\nan optional check."
    mono_gacutil_ignores: "The Mono gacutil ignores the -f option to maintain commandline compatibility with\\nother gacutils. gacutil will always force the installation of a new assembly."
    referenceid_descriptionthe_mono: "<reference_id> <description>\\nThe Mono gacutil has not implemented traced references and will emit a warning\\nwhen this option is used.\\n"
    gac_util_dot_exe: ""
    commands: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}