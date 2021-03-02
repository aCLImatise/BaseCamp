from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Memprotmd_Sim_List_V0_1_0 = CommandToolBuilder(tool="memprotmd_sim_list", base_command=["memprotmd_sim_list"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_output_simulations", input_type=File(optional=True), prefix="--output_simulations", doc=InputDocumentation(doc="Path to the output JSON file. Accepted formats: json.\n"))], outputs=[ToolOutput(tag="out_output_simulations", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_simulations", type_hint=File()), doc=OutputDocumentation(doc="Path to the output JSON file. Accepted formats: json.\n"))], container="quay.io/biocontainers/biobb_io:3.5.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Memprotmd_Sim_List_V0_1_0().translate("wdl")

