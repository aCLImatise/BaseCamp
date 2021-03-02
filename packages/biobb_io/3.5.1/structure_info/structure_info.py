from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Structure_Info_V0_1_0 = CommandToolBuilder(tool="structure_info", base_command=["structure_info"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_output_json_path", input_type=File(optional=True), prefix="--output_json_path", doc=InputDocumentation(doc="Path to the output JSON file with all the structure information. Accepted formats: json.\n"))], outputs=[ToolOutput(tag="out_output_json_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_json_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the output JSON file with all the structure information. Accepted formats: json.\n"))], container="quay.io/biocontainers/biobb_io:3.5.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Structure_Info_V0_1_0().translate("wdl")

