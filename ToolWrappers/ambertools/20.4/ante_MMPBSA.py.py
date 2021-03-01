from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Ante_Mmpbsa_Py_V0_1_0 = CommandToolBuilder(tool="ante_MMPBSA.py", base_command=["ante-MMPBSA.py"], inputs=[ToolInput(tag="in_prm_top", input_type=String(optional=True), prefix="--prmtop", doc=InputDocumentation(doc="Input 'dry' complex topology or solvated complex\ntopology")), ToolInput(tag="in_complex_prm_top", input_type=File(optional=True), prefix="--complex-prmtop", doc=InputDocumentation(doc="Complex topology file created by stripping PRMTOP of\nsolvent")), ToolInput(tag="in_receptor_prm_top", input_type=File(optional=True), prefix="--receptor-prmtop", doc=InputDocumentation(doc="Receptor topology file created by stripping COMPLEX of\nligand")), ToolInput(tag="in_ligand_prm_top", input_type=File(optional=True), prefix="--ligand-prmtop", doc=InputDocumentation(doc="Ligand topology file created by stripping COMPLEX of\nreceptor")), ToolInput(tag="in_strip_mask", input_type=File(optional=True), prefix="--strip-mask", doc=InputDocumentation(doc="Amber mask of atoms needed to be stripped from PRMTOP\nto make the COMPLEX topology file")), ToolInput(tag="in_receptor_mask", input_type=String(optional=True), prefix="--receptor-mask", doc=InputDocumentation(doc="Amber mask of atoms needed to be stripped from COMPLEX\nto create RECEPTOR. Cannot specify with -n/--ligand-\nmask")), ToolInput(tag="in_ligand_mask", input_type=String(optional=True), prefix="--ligand-mask", doc=InputDocumentation(doc="Amber mask of atoms needed to be stripped from COMPLEX\nto create LIGAND. Cannot specify with -m/--receptor-\nmask")), ToolInput(tag="in_radii", input_type=Int(optional=True), prefix="--radii", doc=InputDocumentation(doc="PB/GB Radius set to set in the generated topology\nfiles. This is equivalent to 'set PBRadii <radius>' in\nLEaP. Options are bondi, mbondi2, mbondi3, amber6, and\nmbondi and the default is to use the existing radii.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ante_Mmpbsa_Py_V0_1_0().translate("wdl", allow_empty_container=True)

