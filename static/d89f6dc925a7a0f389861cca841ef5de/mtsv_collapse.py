from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Mtsv_Collapse_V0_1_0 = CommandToolBuilder(tool="mtsv_collapse", base_command=["mtsv-collapse"], inputs=[ToolInput(tag="in_include_flag_trigger", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Include this flag to trigger debug-level logging.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to write combined outupt file to.")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mtsv-tools:1.0.2--h779adbc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mtsv_Collapse_V0_1_0().translate("wdl")

