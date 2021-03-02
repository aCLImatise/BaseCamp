from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fitsheader_Filename_V0_1_0 = CommandToolBuilder(tool="fitsheader_filename", base_command=["fitsheader", "filename"], inputs=[ToolInput(tag="in_c", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_e", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_fits_header", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_format", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fitsheader_Filename_V0_1_0().translate("wdl", allow_empty_container=True)

