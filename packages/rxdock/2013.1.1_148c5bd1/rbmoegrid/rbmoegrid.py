from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float

Rbmoegrid_V0_1_0 = CommandToolBuilder(tool="rbmoegrid", base_command=["rbmoegrid"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file name prefix (.grd is suffixed)\n(default: moegrid)")), ToolInput(tag="in_receptor_param", input_type=File(optional=True), prefix="--receptor-param", doc=InputDocumentation(doc="receptor param file(s) (contain active site\nparams, can be specified multiple times)")), ToolInput(tag="in_sf_param", input_type=File(optional=True), prefix="--sf-param", doc=InputDocumentation(doc="scoring function param file (default:\ncalcgrid_vdw.prm)")), ToolInput(tag="in_grid_step", input_type=Float(optional=True), prefix="--grid-step", doc=InputDocumentation(doc="grid step (in angstrom) (default: 0.5)")), ToolInput(tag="in_grid_border", input_type=Float(optional=True), prefix="--grid-border", doc=InputDocumentation(doc="grid border around docking site (in angstrom)\n(default: 1.0)")), ToolInput(tag="in_tripos_atom_type", input_type=Float(optional=True), prefix="--tripos-atom-type", doc=InputDocumentation(doc="Tripos atom type (default: C.3)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file name prefix (.grd is suffixed)\n(default: moegrid)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbmoegrid_V0_1_0().translate("wdl", allow_empty_container=True)

