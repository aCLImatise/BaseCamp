from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

_Webpng_V0_1_0 = CommandToolBuilder(tool="_webpng", base_command=["_webpng"], inputs=[ToolInput(tag="in_turns_onoff_interlace", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="Turns on/off interlace")), ToolInput(tag="in_prints_table_color", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="Prints the table of color indexes")), ToolInput(tag="in_set_transparent_color", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Set the transparent color to the specified index (0-255 or 'none')")), ToolInput(tag="in_reports_dimensions_characteristics", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Reports the dimensions and other characteristics of the image")), ToolInput(tag="in_prints_alpha_channels", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Prints all alpha channels that are not 100% opaque")), ToolInput(tag="in_web_png", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Webpng_V0_1_0().translate("wdl", allow_empty_container=True)

