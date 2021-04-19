from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Peakachu_Coverage_V0_1_0 = CommandToolBuilder(tool="peakachu_coverage", base_command=["peakachu", "coverage"], inputs=[ToolInput(tag="in_p", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_project_folder", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/peakachu:0.2.0--py36hc5360cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakachu_Coverage_V0_1_0().translate("wdl")

