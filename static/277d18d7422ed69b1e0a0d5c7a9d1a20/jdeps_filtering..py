from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Jdeps_Filtering__V0_1_0 = CommandToolBuilder(tool="jdeps_filtering.", base_command=["jdeps", "filtering."], inputs=[ToolInput(tag="in_j_deps", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_path_dot_dot_dot", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jdeps_Filtering__V0_1_0().translate("wdl", allow_empty_container=True)

