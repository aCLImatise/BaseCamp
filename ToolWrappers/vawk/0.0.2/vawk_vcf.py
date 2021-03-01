from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Vawk_Vcf_V0_1_0 = CommandToolBuilder(tool="vawk_vcf", base_command=["vawk", "vcf"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_va_wk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cmd", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_vcf", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vawk_Vcf_V0_1_0().translate("wdl", allow_empty_container=True)

