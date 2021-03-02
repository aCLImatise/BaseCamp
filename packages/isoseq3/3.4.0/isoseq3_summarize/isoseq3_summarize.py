from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Isoseq3_Summarize_V0_1_0 = CommandToolBuilder(tool="isoseq3_summarize", base_command=["isoseq3", "summarize"], inputs=[ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE  Log to a file, instead of stderr.")), ToolInput(tag="in_summary_dot_csv", input_type=String(), position=0, doc=InputDocumentation(doc="STR   Output summary CSV"))], outputs=[], container="quay.io/biocontainers/isoseq3:3.4.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isoseq3_Summarize_V0_1_0().translate("wdl")

