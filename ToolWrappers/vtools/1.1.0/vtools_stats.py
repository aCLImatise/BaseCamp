from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Vtools_Stats_V0_1_0 = CommandToolBuilder(tool="vtools_stats", base_command=["vtools-stats"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input VCF file  [required]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

