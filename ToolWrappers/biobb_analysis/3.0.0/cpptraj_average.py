from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Cpptraj_Average_V0_1_0 = CommandToolBuilder(tool="cpptraj_average", base_command=["cpptraj_average"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_top_path", input_type=File(optional=True), prefix="--input_top_path", doc=InputDocumentation(doc="Path to the input structure or topology file. Accepted formats: top, pdb, prmtop, parmtop, zip.")), ToolInput(tag="in_input_t_raj_path", input_type=File(optional=True), prefix="--input_traj_path", doc=InputDocumentation(doc="Path to the input trajectory to be processed. Accepted formats: crd, cdf, netcdf, restart, ncrestart, restartnc, dcd, charmm, cor, pdb, mol2, trr, gro, binpos, xtc, cif, arc, sqm, sdf, conflib.")), ToolInput(tag="in_output_c_ppt_raj_path", input_type=File(optional=True), prefix="--output_cpptraj_path", doc=InputDocumentation(doc="Path to the output processed structure.\n"))], outputs=[ToolOutput(tag="out_output_c_ppt_raj_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_c_ppt_raj_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the output processed structure.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cpptraj_Average_V0_1_0().translate("wdl", allow_empty_container=True)

