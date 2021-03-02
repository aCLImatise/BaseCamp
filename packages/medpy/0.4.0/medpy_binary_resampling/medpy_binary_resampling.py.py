from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Medpy_Binary_Resampling_Py_V0_1_0 = CommandToolBuilder(tool="medpy_binary_resampling.py", base_command=["medpy_binary_resampling.py"], inputs=[ToolInput(tag="in_order", input_type=Int(optional=True), prefix="--order", doc=InputDocumentation(doc="the bspline order, default is 0 (= nearest neighbour)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose output")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="overwrite existing files")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="the input image")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="the output image")), ToolInput(tag="in_spacing", input_type=String(), position=2, doc=InputDocumentation(doc="the desired voxel spacing in colon-separated values,\ne.g. 1.2,1.2,5.0"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Binary_Resampling_Py_V0_1_0().translate("wdl", allow_empty_container=True)

