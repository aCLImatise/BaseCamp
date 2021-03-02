from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Cfsan_Snp_Pipeline_Purge_V0_1_0 = CommandToolBuilder(tool="cfsan_snp_pipeline_purge", base_command=["cfsan_snp_pipeline", "purge"], inputs=[ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose message level (0=no info, 5=lots) (default: 1)")), ToolInput(tag="in_work_dir", input_type=String(), position=0, doc=InputDocumentation(doc="Path to the working directory containing the 'samples'\ndirectory to be recursively deleted"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cfsan_Snp_Pipeline_Purge_V0_1_0().translate("wdl", allow_empty_container=True)

