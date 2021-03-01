from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Planemo_Travis_Init_Testing__V0_1_0 = CommandToolBuilder(tool="planemo_travis_init_testing.", base_command=["planemo", "travis_init", "testing."], inputs=[ToolInput(tag="in_plane_mo", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_travis_in_it", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_project", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Travis_Init_Testing__V0_1_0().translate("wdl")

