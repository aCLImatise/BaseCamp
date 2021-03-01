from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Bandage_Image_V0_1_0 = CommandToolBuilder(tool="Bandage_image", base_command=["Bandage", "image"], inputs=[ToolInput(tag="in_height", input_type=Int(optional=True), prefix="--height", doc=InputDocumentation(doc="Image height (default: 1000)")), ToolInput(tag="in_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="Image width (default: not set)")), ToolInput(tag="in_help_all", input_type=Boolean(optional=True), prefix="--helpall", doc=InputDocumentation(doc="View all command line settings")), ToolInput(tag="in_graph", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bandage_Image_V0_1_0().translate("wdl", allow_empty_container=True)

