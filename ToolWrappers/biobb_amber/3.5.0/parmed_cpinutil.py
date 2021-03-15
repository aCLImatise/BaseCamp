from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Parmed_Cpinutil_V0_1_0 = CommandToolBuilder(tool="parmed_cpinutil", base_command=["parmed_cpinutil"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_top_path", input_type=File(optional=True), prefix="--input_top_path", doc=InputDocumentation(doc="Input AMBER topology file. Accepted formats: top, parmtop, prmtop.")), ToolInput(tag="in_output_cp_in_path", input_type=File(optional=True), prefix="--output_cpin_path", doc=InputDocumentation(doc="Output AMBER constant pH input (CPin) file. Accepted formats: cpin.")), ToolInput(tag="in_output_top_path", input_type=File(optional=True), prefix="--output_top_path", doc=InputDocumentation(doc="Output topology file (AMBER ParmTop). Accepted formats: top, parmtop, prmtop.\n"))], outputs=[ToolOutput(tag="out_output_cp_in_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_cp_in_path", type_hint=File()), doc=OutputDocumentation(doc="Output AMBER constant pH input (CPin) file. Accepted formats: cpin.")), ToolOutput(tag="out_output_top_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_top_path", type_hint=File()), doc=OutputDocumentation(doc="Output topology file (AMBER ParmTop). Accepted formats: top, parmtop, prmtop.\n"))], container="quay.io/biocontainers/biobb_amber:3.5.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parmed_Cpinutil_V0_1_0().translate("wdl")

