from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Run_Intersections_V0_1_0 = CommandToolBuilder(tool="run_intersections", base_command=["run_intersections"], inputs=[ToolInput(tag="in_chri", input_type=String(), position=0, doc=InputDocumentation(doc="850     879     +       L1P5    LINE    L1"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Intersections_V0_1_0().translate("wdl", allow_empty_container=True)

