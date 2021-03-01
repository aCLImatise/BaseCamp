from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Drugbank_V0_1_0 = CommandToolBuilder(tool="drugbank", base_command=["drugbank"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_output_sdf_path", input_type=File(optional=True), prefix="--output_sdf_path", doc=InputDocumentation(doc="Path to the output SDF component file. Accepted formats: sdf.\n"))], outputs=[ToolOutput(tag="out_output_sdf_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_sdf_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the output SDF component file. Accepted formats: sdf.\n"))], container="quay.io/biocontainers/biobb_io:3.5.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drugbank_V0_1_0().translate("wdl")

