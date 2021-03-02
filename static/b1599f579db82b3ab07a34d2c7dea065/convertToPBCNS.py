from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Converttopbcns_V0_1_0 = CommandToolBuilder(tool="convertToPBCNS", base_command=["convertToPBCNS"], inputs=[ToolInput(tag="in_coverage", input_type=Boolean(optional=True), prefix="-coverage", doc=InputDocumentation(doc="Minimum coverage in a consensus region to keep, default 0.")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="-threads", doc=InputDocumentation(doc="Number of threads to use for generating consensus, default 1.")), ToolInput(tag="in_path", input_type=Boolean(optional=True), prefix="-path", doc=InputDocumentation(doc="Path to smrtportal installation. Required if smrtportal is not in path.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="-prefix", doc=InputDocumentation(doc="Prefix for temporary files created by this job")), ToolInput(tag="in_length", input_type=Boolean(optional=True), prefix="-length", doc=InputDocumentation(doc="Minimum sequence length to keep"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Converttopbcns_V0_1_0().translate("wdl", allow_empty_container=True)

