from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Medpy_Apparent_Diffusion_Coefficient_Py_V0_1_0 = CommandToolBuilder(tool="medpy_apparent_diffusion_coefficient.py", base_command=["medpy_apparent_diffusion_coefficient.py"], inputs=[ToolInput(tag="in_threshold", input_type=String(optional=True), prefix="--threshold", doc=InputDocumentation(doc="set a fixed threshold for the input images to mask the\ncomputation")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose output")), ToolInput(tag="in_display_debug_information", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Display debug information.")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="overwrite existing files")), ToolInput(tag="in_bzero_image", input_type=Int(), position=0, doc=InputDocumentation(doc="the diffusion weighted image required with b=0")), ToolInput(tag="in_bx_image", input_type=String(), position=1, doc=InputDocumentation(doc="the diffusion weighted image required with b=x")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="the computed apparent diffusion coefficient image"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Apparent_Diffusion_Coefficient_Py_V0_1_0().translate("wdl", allow_empty_container=True)

