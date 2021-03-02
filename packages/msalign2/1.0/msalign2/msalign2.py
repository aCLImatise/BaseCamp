from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Msalign2_V0_1_0 = CommandToolBuilder(tool="msalign2", base_command=["msalign2"], inputs=[ToolInput(tag="in_e", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_two", input_type=Boolean(optional=True), prefix="-2", doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="")), ToolInput(tag="in_ms_align", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_lc_ms_dataset_one_filename", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_lc_ms_dataset_two_filename", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msalign2_V0_1_0().translate("wdl", allow_empty_container=True)

