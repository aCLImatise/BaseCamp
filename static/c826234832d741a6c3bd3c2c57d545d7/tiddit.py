from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float

Tiddit_V0_1_0 = CommandToolBuilder(tool="tiddit", base_command=["tiddit"], inputs=[ToolInput(tag="in_sv", input_type=Boolean(optional=True), prefix="--sv", doc=InputDocumentation(doc="call structural variation")), ToolInput(tag="in_cov", input_type=Boolean(optional=True), prefix="--cov", doc=InputDocumentation(doc="generate a coverage bed file")), ToolInput(tag="in_tidd_it_two_do_tone_two_dot_zero", input_type=Float(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tiddit_V0_1_0().translate("wdl", allow_empty_container=True)

