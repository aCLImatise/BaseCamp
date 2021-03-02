from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Pilconvert_Py_V0_1_0 = CommandToolBuilder(tool="pilconvert.py", base_command=["pilconvert.py"], inputs=[ToolInput(tag="in_convert_format_default", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="convert to format (default is given by extension)")), ToolInput(tag="in_convert_to_greyscale", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="convert to greyscale")), ToolInput(tag="in_convert_palette_image", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="convert to palette image (using standard palette)")), ToolInput(tag="in_convert_to_rgb", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="convert to rgb")), ToolInput(tag="in_optimize_trade_speed", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="optimize output (trade speed for size)")), ToolInput(tag="in_set_compression_quality", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="set compression quality (0-100, JPEG only)")), ToolInput(tag="in_list_supported_formats", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="list supported file formats")), ToolInput(tag="in_in_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_outfile", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pilconvert_Py_V0_1_0().translate("wdl", allow_empty_container=True)

