from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Gmx_Energy_V0_1_0 = CommandToolBuilder(tool="gmx_energy", base_command=["gmx_energy"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Configuration file")), ToolInput(tag="in_input_energy_path", input_type=File(optional=True), prefix="--input_energy_path", doc=InputDocumentation(doc="Path to the input EDR file. Accepted formats: edr.")), ToolInput(tag="in_output_x_vg_path", input_type=File(optional=True), prefix="--output_xvg_path", doc=InputDocumentation(doc="Path to the XVG output file. Accepted formats: xvg.\n"))], outputs=[ToolOutput(tag="out_output_x_vg_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_x_vg_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the XVG output file. Accepted formats: xvg.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gmx_Energy_V0_1_0().translate("wdl", allow_empty_container=True)

