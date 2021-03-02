from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int

Olapsfromcontig_V0_1_0 = CommandToolBuilder(tool="olapsFromContig", base_command=["olapsFromContig"], inputs=[ToolInput(tag="in_set_maximum_default", input_type=Float(optional=True), prefix="-e", doc=InputDocumentation(doc="Set maximum overlap error, default 0.05")), ToolInput(tag="in_set_minimum_overlap", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="Set minimum overlap length, default 20\nConverts bank CTG messages to overlaps.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Olapsfromcontig_V0_1_0().translate("wdl", allow_empty_container=True)

