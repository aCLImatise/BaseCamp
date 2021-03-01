from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sampling_Utils_Sync_Files__V0_1_0 = CommandToolBuilder(tool="sampling_utils_sync_files.", base_command=["sampling-utils", "sync", "files."], inputs=[ToolInput(tag="in_sampling_utils", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sync", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sampling_Utils_Sync_Files__V0_1_0().translate("wdl")

