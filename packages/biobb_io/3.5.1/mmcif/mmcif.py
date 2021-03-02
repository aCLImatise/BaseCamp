from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Mmcif_V0_1_0 = CommandToolBuilder(tool="mmcif", base_command=["mmcif"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_output_mmcif_path", input_type=File(optional=True), prefix="--output_mmcif_path", doc=InputDocumentation(doc="Path to the output MMCIF file. Accepted formats: cif, mmcif.\n"))], outputs=[ToolOutput(tag="out_output_mmcif_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_mmcif_path", type_hint=File()), doc=OutputDocumentation(doc="Path to the output MMCIF file. Accepted formats: cif, mmcif.\n"))], container="quay.io/biocontainers/biobb_io:3.5.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmcif_V0_1_0().translate("wdl")

