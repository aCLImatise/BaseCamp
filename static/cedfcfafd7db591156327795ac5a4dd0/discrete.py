from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Discrete_V0_1_0 = CommandToolBuilder(tool="discrete", base_command=["discrete"], inputs=[ToolInput(tag="in_param__settings", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="param          Settings")), ToolInput(tag="in_pdb_in", input_type=Boolean(optional=True), prefix="-pdbin", doc=InputDocumentation(doc="raw PDB file   Initial PDB")), ToolInput(tag="in_ener", input_type=Boolean(optional=True), prefix="-ener", doc=InputDocumentation(doc="energy         Energies")), ToolInput(tag="in_trj", input_type=Boolean(optional=True), prefix="-trj", doc=InputDocumentation(doc="trajectory.pdb Trajectory (PDB)")), ToolInput(tag="in_pdb_targ", input_type=Boolean(optional=True), prefix="-pdbtarg", doc=InputDocumentation(doc="target.pdb     Target PDB")), ToolInput(tag="in_log_calculation_log", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="log            Calculation Log")), ToolInput(tag="in_p_one", input_type=Boolean(optional=True), prefix="-p1", doc=InputDocumentation(doc="same.dat       Table of same residues")), ToolInput(tag="in_p_two", input_type=Boolean(optional=True), prefix="-p2", doc=InputDocumentation(doc="sametarget.dat Table of same residues target"))], outputs=[], container="quay.io/biocontainers/godmd:1.0.0--hfad81c2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Discrete_V0_1_0().translate("wdl")

