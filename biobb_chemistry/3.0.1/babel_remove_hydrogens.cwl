class: CommandLineTool
id: ../../../babel_remove_hydrogens.cwl
inputs:
- id: config
  doc: Configuration file
  type: string
  inputBinding:
    prefix: --config
- id: input_path
  doc: 'Path to the input file. Accepted formats: abinit, acesout, acr, adfout, alc,
    aoforce, arc, axsf, bgf, box, bs, c09out, c3d2, caccrt, can, car, castep, ccc,
    cdjson, cdx, cdxml, cif, ck, cml, cmlr, CONFIG, CONTCAR, CONTFF, crk2d, crk3d,
    ct, cub, cube, dallog, dalmol, dat, dmol, dx, ent, exyz, fa, fasta, fch, fchk,
    fck, feat, fhiaims, fract, fs, fsa, g03, g09, g92, g94, g98, gal, gam, gamess,
    gamin, gamout, got, gpr, gro, gukin, gukout, gzmat, hin, HISTORY, inchi, inp,
    ins, jin, jout, log, lpmd, mcdl, mcif, MDFF, mdl, ml2, mmcif, mmd, mmod, mol,
    mol2, mold, molden, molf, moo, mop, mopcrt, mopin, mopout, mpc, mpo, mpqc, mrv,
    msi, nwo, orca, out, outmol, output, pc, pcjson, pcm, pdb, pdbqt, png, pos, POSCAR,
    POSFF, pqr, pqs, prep, pwscf, qcout, res, rsmi, rxn, sd, sdf, siesta, smi, smiles,
    smy, sy2, t41, tdd, text, therm, tmol, txt, txyz, unixyz, VASP, vmol, xml, xsf,
    xtc, xyz, yob.'
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: 'Path to the output file. Accepted formats: acesin, adf, alc, ascii, bgf, box,
    bs, c3d1, c3d2, cac, caccrt, cache, cacint, can, cdjson, cdxml, cht, cif, ck,
    cml, cmlr, com, confabreport, CONFIG, CONTCAR, CONTFF, copy, crk2d, crk3d, csr,
    cssr, ct, cub, cube, dalmol, dmol, dx, ent, exyz, fa, fasta, feat, fh, fhiaims,
    fix, fps, fpt, fract, fs, fsa, gamin, gau, gjc, gjf, gpr, gr96, gro, gukin, gukout,
    gzmat, hin, inchi, inchikey, inp, jin, k, lmpdat, lpmd, mcdl, mcif, MDFF, mdl,
    ml2, mmcif, mmd, mmod, mna, mol, mol2, mold, molden, molf, molreport, mop, mopcrt,
    mopin, mp, mpc, mpd, mpqcin, mrv, msms, nul, nw, orcainp, outmol, paint, pcjson,
    pcm, pdb, pdbqt, png, pointcloud, POSCAR, POSFF, pov, pqr, pqs, qcin, report,
    rsmi, rxn, sd, sdf, smi, smiles, stl, svg, sy2, tdd, text, therm, tmol, txt, txyz,
    unixyz, VASP, vmol, xed, xyz, yob, zin.'
  type: string
  inputBinding:
    prefix: --output_path
outputs: []
cwlVersion: v1.1
baseCommand:
- babel_remove_hydrogens
