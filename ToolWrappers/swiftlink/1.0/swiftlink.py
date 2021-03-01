from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float, Boolean, File

Swiftlink_V0_1_0 = CommandToolBuilder(tool="swiftlink", base_command=["swiftlink"], inputs=[ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="(default = 'swiftlink.out')")), ToolInput(tag="in_trace_prefix", input_type=String(optional=True), prefix="--traceprefix", doc=InputDocumentation(doc="(default = 'trace')")), ToolInput(tag="in_floatfloat__penetrancefloatfloatfloatdefault", input_type=Float(optional=True), prefix="-k", doc=InputDocumentation(doc=",FLOAT,FLOAT --penetrance=FLOAT,FLOAT,FLOAT(default = 0.00,0.00,1.00)")), ToolInput(tag="in_gpu", input_type=Boolean(optional=True), prefix="--gpu", doc=InputDocumentation(doc="[UNAVAILABLE, COMPILED WITHOUT CUDA]")), ToolInput(tag="in_d", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Swiftlink_V0_1_0().translate("wdl", allow_empty_container=True)

