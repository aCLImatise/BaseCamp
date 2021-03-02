from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, String

Twobitmask_V0_1_0 = CommandToolBuilder(tool="twoBitMask", base_command=["twoBitMask"], inputs=[ToolInput(tag="in_add", input_type=Boolean(optional=True), prefix="-add", doc=InputDocumentation(doc="Don't remove pre-existing masking before applying maskFile.")), ToolInput(tag="in_type", input_type=Boolean(optional=True), prefix="-type", doc=InputDocumentation(doc="=.XXX   Type of maskFile is XXX (bed or out).")), ToolInput(tag="in_input_dot_two_bit", input_type=Float(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mask_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Twobitmask_V0_1_0().translate("wdl", allow_empty_container=True)

