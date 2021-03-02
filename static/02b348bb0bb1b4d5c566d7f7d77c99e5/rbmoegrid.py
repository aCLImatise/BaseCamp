from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float

Rbmoegrid_V0_1_0 = CommandToolBuilder(tool="rbmoegrid", base_command=["rbmoegrid"], inputs=[ToolInput(tag="in_grd_is_suffixed", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="(.grd is suffixed)")), ToolInput(tag="in_receptor_param_file", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="- receptor param file (contains active site params)")), ToolInput(tag="in_scoring_function_param", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="- scoring function param file (default calcgrid_vdw.prm)")), ToolInput(tag="in_grid_step_defaulta", input_type=Float(optional=True), prefix="-g", doc=InputDocumentation(doc="- grid step (default=0.5A)")), ToolInput(tag="in_grid_border_defaulta", input_type=Float(optional=True), prefix="-b", doc=InputDocumentation(doc="- grid border around docking site (default=1.0A)")), ToolInput(tag="in_tripos_atom_default", input_type=Float(optional=True), prefix="-t", doc=InputDocumentation(doc="- Tripos atom type (default is C.3)"))], outputs=[ToolOutput(tag="out_grd_is_suffixed", output_type=File(optional=True), selector=InputSelector(input_to_select="in_grd_is_suffixed", type_hint=File()), doc=OutputDocumentation(doc="(.grd is suffixed)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbmoegrid_V0_1_0().translate("wdl", allow_empty_container=True)

