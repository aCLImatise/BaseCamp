from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Pymdpbsa_V0_1_0 = CommandToolBuilder(tool="pymdpbsa", base_command=["pymdpbsa"], inputs=[ToolInput(tag="in_proj", input_type=String(optional=True), prefix="--proj", doc=InputDocumentation(doc="global project name")), ToolInput(tag="in_t_raj", input_type=File(optional=True), prefix="--traj", doc=InputDocumentation(doc="MD trajectory file               (default: traj.binpos)")), ToolInput(tag="in_cprm", input_type=File(optional=True), prefix="--cprm", doc=InputDocumentation(doc="complex prmtop file              (default: com.prm)")), ToolInput(tag="in_lprm", input_type=File(optional=True), prefix="--lprm", doc=InputDocumentation(doc="ligand only prmtop file          (default: lig.prm)")), ToolInput(tag="in_r_prm", input_type=File(optional=True), prefix="--rprm", doc=InputDocumentation(doc="receptor only prmtop file        (default: rec.prm)")), ToolInput(tag="in_lig", input_type=String(optional=True), prefix="--lig", doc=InputDocumentation(doc="residue name of ligand           (default: LIG)")), ToolInput(tag="in_start", input_type=Int(optional=True), prefix="--start", doc=InputDocumentation(doc="first MD frame to be used        (default: 1)")), ToolInput(tag="in_stop", input_type=Int(optional=True), prefix="--stop", doc=InputDocumentation(doc="last MD frame to be used         (default: 1)")), ToolInput(tag="in_step", input_type=Int(optional=True), prefix="--step", doc=InputDocumentation(doc="use every [step] MD frame        (default: 1)")), ToolInput(tag="in_solv", input_type=Int(optional=True), prefix="--solv", doc=InputDocumentation(doc="0 for no solvation term (eps=r)\n1, 2, 5, 7, or 8 for GBSA\n3 for PBSA\n4 for PBSA/dispersion            (default: 1)")), ToolInput(tag="in_clean", input_type=Boolean(optional=True), prefix="--clean", doc=InputDocumentation(doc="clean up temporary files         (default: no clean)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pymdpbsa_V0_1_0().translate("wdl", allow_empty_container=True)

