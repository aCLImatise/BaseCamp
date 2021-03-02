from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Checking_Log_V0_1_0 = CommandToolBuilder(tool="checking_log", base_command=["checking_log"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_pdb_path", input_type=File(optional=True), prefix="--input_pdb_path", doc=InputDocumentation(doc="Input PDB file name")), ToolInput(tag="in_output_log_path", input_type=File(optional=True), prefix="--output_log_path", doc=InputDocumentation(doc="Output log file name\n"))], outputs=[ToolOutput(tag="out_output_log_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_log_path", type_hint=File()), doc=OutputDocumentation(doc="Output log file name\n"))], container="quay.io/biocontainers/biobb_model:3.5.1--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checking_Log_V0_1_0().translate("wdl")

