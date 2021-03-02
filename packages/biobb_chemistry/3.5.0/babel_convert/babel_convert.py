from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Babel_Convert_V0_1_0 = CommandToolBuilder(tool="babel_convert", base_command=["babel_convert"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_path", input_type=File(optional=True), prefix="--input_path", doc=InputDocumentation(doc="Path to the input file. Accepted formats: dat, ent, fa, fasta, gro, inp, log, mcif, mdl, mmcif, mol, mol2, pdb, pdbqt, png, sdf, smi, smiles, txt, xml, xtc.")), ToolInput(tag="in_output_path", input_type=File(optional=True), prefix="--output_path", doc=InputDocumentation(doc="Path to the output file. Accepted formats: ent, fa, fasta, gro, inp, mcif, mdl, mmcif, mol, mol2, pdb, pdbqt, png, sdf, smi, smiles, txt.\n"))], outputs=[ToolOutput(tag="out_output_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the output file. Accepted formats: ent, fa, fasta, gro, inp, mcif, mdl, mmcif, mol, mol2, pdb, pdbqt, png, sdf, smi, smiles, txt.\n"))], container="quay.io/biocontainers/biobb_chemistry:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Babel_Convert_V0_1_0().translate("wdl")

