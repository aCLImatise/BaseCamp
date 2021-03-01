from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Genion_V0_1_0 = CommandToolBuilder(tool="genion", base_command=["genion"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_output_top_zip_path", input_type=File(optional=True), prefix="--output_top_zip_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_top_zip_path", input_type=File(optional=True), prefix="--input_top_zip_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_gro_path", input_type=File(optional=True), prefix="--output_gro_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_tpr_path", input_type=File(optional=True), prefix="--input_tpr_path", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_top_zip_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_top_zip_path", type_hint=File()), doc=OutputDocumentation(doc="")), ToolOutput(tag="out_output_gro_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_gro_path", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genion_V0_1_0().translate("wdl", allow_empty_container=True)

