from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Genrestr_V0_1_0 = CommandToolBuilder(tool="genrestr", base_command=["genrestr"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_ndx_path", input_type=String(optional=True), prefix="--input_ndx_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_itp_path", input_type=File(optional=True), prefix="--output_itp_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_structure_path", input_type=File(optional=True), prefix="--input_structure_path", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_itp_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_itp_path", type_hint=File()), doc=OutputDocumentation(doc=""))], container="quay.io/biocontainers/biobb_md:3.5.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genrestr_V0_1_0().translate("wdl")

