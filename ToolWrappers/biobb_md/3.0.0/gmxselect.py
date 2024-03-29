from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Gmxselect_V0_1_0 = CommandToolBuilder(tool="gmxselect", base_command=["gmxselect"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="This file can be a YAML file, JSON file or JSON string")), ToolInput(tag="in_input_ndx_path", input_type=String(optional=True), prefix="--input_ndx_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_ndx_path", input_type=String(optional=True), prefix="--output_ndx_path", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_structure_path", input_type=File(optional=True), prefix="--input_structure_path", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gmxselect_V0_1_0().translate("wdl", allow_empty_container=True)

