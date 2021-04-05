from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Kcutilmgr_V0_1_0 = CommandToolBuilder(tool="kcutilmgr", base_command=["kcutilmgr"], inputs=[ToolInput(tag="in_ic", input_type=Boolean(optional=True), prefix="-ic", doc=InputDocumentation(doc="")), ToolInput(tag="in_alt", input_type=String(optional=True), prefix="-alt", doc=InputDocumentation(doc="")), ToolInput(tag="in_key", input_type=String(optional=True), prefix="-key", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_cip_h", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_comp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_conf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_enc", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hash", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hex", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_regex", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_pattern", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/kyototycoon:20170410--h896b458_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kcutilmgr_V0_1_0().translate("wdl")

