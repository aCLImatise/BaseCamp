from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Minidot_V0_1_0 = CommandToolBuilder(tool="minidot", base_command=["minidot"], inputs=[ToolInput(tag="in_min_match_length", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="min match length [100]")), ToolInput(tag="in_min_identity", input_type=Float(optional=True), prefix="-i", doc=InputDocumentation(doc="min identity [0.10]")), ToolInput(tag="in_min_span", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="min span [1000]")), ToolInput(tag="in_image_width", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="image width [600]")), ToolInput(tag="in_font_size", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="font size [11]")), ToolInput(tag="in_do_print_labels", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="don't print labels")), ToolInput(tag="in_try_put_hits", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="don't try to put hits onto the diagonal")), ToolInput(tag="in_in_dot_paf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minidot_V0_1_0().translate("wdl", allow_empty_container=True)

