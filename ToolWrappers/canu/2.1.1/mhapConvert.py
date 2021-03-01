from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mhapconvert_V0_1_0 = CommandToolBuilder(tool="mhapConvert", base_command=["mhapConvert"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-S", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_do_tm_hap", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/canu:2.1.1--he1b5a44_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mhapconvert_V0_1_0().translate("wdl")

