class: CommandLineTool
id: h2xs.cwl
inputs:
- id: in_omit_autoload
  doc: Omit all autoloading facilities (implies -c).
  type: boolean
  inputBinding:
    prefix: --omit-autoload
- id: in_beta_version
  doc: Use beta $VERSION of 0.00_01 (ignored if -v).
  type: boolean
  inputBinding:
    prefix: --beta-version
- id: in_omit_changes
  doc: "Omit creating the Changes file, add HISTORY heading\nto stub POD."
  type: boolean
  inputBinding:
    prefix: --omit-changes
- id: in_cpp_flags
  doc: Additional flags for C preprocessor/compile.
  type: boolean
  inputBinding:
    prefix: --cpp-flags
- id: in_func_mask
  doc: "Mask to select C functions/macros\n(default is select all)."
  type: boolean
  inputBinding:
    prefix: --func-mask
- id: in_overwrite_ok
  doc: Allow overwriting of a pre-existing extension directory.
  type: boolean
  inputBinding:
    prefix: --overwrite-ok
- id: in_omit_pod
  doc: Omit the stub POD section.
  type: boolean
  inputBinding:
    prefix: --omit-pod
- id: in_omit_xs
  doc: Omit the XS portion (implies both -c and -f).
  type: boolean
  inputBinding:
    prefix: --omit-XS
- id: in_gen_accessors
  doc: "Generate get/set accessors for struct and union members\n(used with -x)."
  type: boolean
  inputBinding:
    prefix: --gen-accessors
- id: in_compat_version
  doc: Specify a perl version to be backwards compatible with.
  type: boolean
  inputBinding:
    prefix: --compat-version
- id: in_omit_constant
  doc: "Omit the constant() function and specialised AUTOLOAD\nfrom the XS file."
  type: boolean
  inputBinding:
    prefix: --omit-constant
- id: in_debugging
  doc: Turn on debugging messages.
  type: boolean
  inputBinding:
    prefix: --debugging
- id: in_omit_enums
  doc: "Omit constants from enums in the constant() function.\nIf a pattern is given,\
    \ only the matching enums are\nignored."
  type: boolean
  inputBinding:
    prefix: --omit-enums
- id: in_force
  doc: "Force creation of the extension even if the C header\ndoes not exist."
  type: boolean
  inputBinding:
    prefix: --force
- id: in_global
  doc: Include code for safely storing static data in the .xs file.
  type: boolean
  inputBinding:
    prefix: --global
- id: in_omit_const_func
  doc: "'const' attribute on function arguments\n(used with -x)."
  type: string
  inputBinding:
    prefix: --omit-const-func
- id: in_gen_tied_var
  doc: Generate tied variables for access to declared
  type: boolean
  inputBinding:
    prefix: --gen-tied-var
- id: in_opaque_re
  doc: Regular expression for "opaque" types.
  type: boolean
  inputBinding:
    prefix: --opaque-re
- id: in_remove_prefix
  doc: "Specify a prefix which should be removed from the\nPerl function names."
  type: boolean
  inputBinding:
    prefix: --remove-prefix
- id: in_const_subs
  doc: Create subroutines for specified macros.
  type: boolean
  inputBinding:
    prefix: --const-subs
- id: in_default_type
  doc: Default type for autoloaded constants (default is IV).
  type: boolean
  inputBinding:
    prefix: --default-type
- id: in_use_new_tests
  doc: Use Test::More in backward compatible modules.
  type: boolean
  inputBinding:
    prefix: --use-new-tests
- id: in_use_old_tests
  doc: Use the module Test rather than Test::More.
  type: boolean
  inputBinding:
    prefix: --use-old-tests
- id: in_skip_exporter
  doc: Do not export symbols.
  type: boolean
  inputBinding:
    prefix: --skip-exporter
- id: in_skip_pp_port
  doc: Do not use portability layer.
  type: boolean
  inputBinding:
    prefix: --skip-ppport
- id: in_skip_autoloader
  doc: not use the module C<AutoLoader>.
  type: string
  inputBinding:
    prefix: --skip-autoloader
- id: in_skip_strict
  doc: Do not use the pragma C<strict>.
  type: boolean
  inputBinding:
    prefix: --skip-strict
- id: in_skip_warnings
  doc: Do not use the pragma C<warnings>.
  type: boolean
  inputBinding:
    prefix: --skip-warnings
- id: in_autogen_x_subs
  doc: Autogenerate XSUBs using C::Scan.
  type: boolean
  inputBinding:
    prefix: --autogen-xsubs
- id: in_use_xs_loader
  doc: "Use XSLoader in backward compatible modules (ignored\nwhen used with -X)."
  type: boolean
  inputBinding:
    prefix: --use-xsloader
- id: in_variables_dot
  doc: -n, --name            Specify a name to use for the extension (recommended).
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- h2xs
