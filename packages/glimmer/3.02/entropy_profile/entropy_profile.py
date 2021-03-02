from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Entropy_Profile_V0_1_0 = CommandToolBuilder(tool="entropy_profile", base_command=["entropy-profile"], inputs=[ToolInput(tag="in_brief", input_type=Boolean(optional=True), prefix="--brief", doc=InputDocumentation(doc="Brief output:  3 columns with header line")), ToolInput(tag="in_min_len", input_type=String(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Don't output any sequence shorter than <n> characters\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Entropy_Profile_V0_1_0().translate("wdl", allow_empty_container=True)

