from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Pytleap_V0_1_0 = CommandToolBuilder(tool="pytleap", base_command=["pytleap"], inputs=[ToolInput(tag="in_prot", input_type=File(optional=True), prefix="--prot", doc=InputDocumentation(doc="protein PDB file                       (no default)")), ToolInput(tag="in_pep", input_type=File(optional=True), prefix="--pep", doc=InputDocumentation(doc="peptide PDB file                       (no default)")), ToolInput(tag="in_lig", input_type=File(optional=True), prefix="--lig", doc=InputDocumentation(doc="ligand MDL (SDF) file                  (no default)")), ToolInput(tag="in_cpl_x", input_type=File(optional=True), prefix="--cplx", doc=InputDocumentation(doc="name for complex files                 (no default)")), ToolInput(tag="in_ppi", input_type=File(optional=True), prefix="--ppi", doc=InputDocumentation(doc="name for protein-peptide complex files (no default)")), ToolInput(tag="in_chrg", input_type=Int(optional=True), prefix="--chrg", doc=InputDocumentation(doc="formal charge on ligand                (default: 0)")), ToolInput(tag="in_rad", input_type=String(optional=True), prefix="--rad", doc=InputDocumentation(doc="radius type for GB                     (default: mbondi)")), ToolInput(tag="in_di_sul", input_type=File(optional=True), prefix="--disul", doc=InputDocumentation(doc="file with S-S definitions in protein   (no default)")), ToolInput(tag="in_ss_pep", input_type=File(optional=True), prefix="--sspep", doc=InputDocumentation(doc="file with S-S definitions in peptide   (no default)")), ToolInput(tag="in_p_frc", input_type=Int(optional=True), prefix="--pfrc", doc=InputDocumentation(doc="protein (peptide) force field          (default: ff14SB)")), ToolInput(tag="in_l_frc", input_type=Int(optional=True), prefix="--lfrc", doc=InputDocumentation(doc="ligand force field                     (default: gaff2)")), ToolInput(tag="in_ctrl", input_type=File(optional=True), prefix="--ctrl", doc=InputDocumentation(doc="leap command file name                 (default: leap.cmd)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pytleap_V0_1_0().translate("wdl", allow_empty_container=True)

