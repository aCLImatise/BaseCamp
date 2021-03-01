from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Frestml_V0_1_0 = CommandToolBuilder(tool="frestml", base_command=["frestml"], inputs=[ToolInput(tag="in_weights", input_type=Boolean(optional=True), prefix="-weights", doc=InputDocumentation(doc="properties Weights file")), ToolInput(tag="in_n_jumble", input_type=Boolean(optional=True), prefix="-njumble", doc=InputDocumentation(doc="integer    [0] Number of times to randomise (Integer 0\nor more)")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_site_length", input_type=Boolean(optional=True), prefix="-sitelength", doc=InputDocumentation(doc="integer    [6] Site length (Integer from 1 to 8)")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Frestml_V0_1_0().translate("wdl", allow_empty_container=True)

