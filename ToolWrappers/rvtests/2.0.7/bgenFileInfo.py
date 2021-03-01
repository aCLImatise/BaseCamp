from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bgenfileinfo_V0_1_0 = CommandToolBuilder(tool="bgenFileInfo", base_command=["bgenFileInfo"], inputs=[ToolInput(tag="in_in_bg_en", input_type=Boolean(optional=True), prefix="--inBgen", doc=InputDocumentation(doc=": Input BGEN File")), ToolInput(tag="in_in_sample", input_type=Boolean(optional=True), prefix="--inSample", doc=InputDocumentation(doc=": Input Sample File"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bgenfileinfo_V0_1_0().translate("wdl", allow_empty_container=True)

