from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Imfusion_Merge_V0_1_0 = CommandToolBuilder(tool="imfusion_merge", base_command=["imfusion-merge"], inputs=[ToolInput(tag="in_sample_dirs", input_type=Array(t=String(), optional=True), prefix="--sample_dirs", doc=InputDocumentation(doc="Path to sample directories.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output path for merged insertion file.")), ToolInput(tag="in_names", input_type=Array(t=String(), optional=True), prefix="--names", doc=InputDocumentation(doc="Alternative sample names to use for samples in merged\ndataset.")), ToolInput(tag="in_output_expression", input_type=File(optional=True), prefix="--output_expression", doc=InputDocumentation(doc="Output path for merged expression file.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output path for merged insertion file.")), ToolOutput(tag="out_output_expression", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_expression", type_hint=File()), doc=OutputDocumentation(doc="Output path for merged expression file.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Imfusion_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

