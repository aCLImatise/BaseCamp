from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Runmetaphyler_Pl_V0_1_0 = CommandToolBuilder(tool="runMetaphyler.pl", base_command=["runMetaphyler.pl"], inputs=[ToolInput(tag="in_prefix_dot_classification", input_type=String(), position=0, doc=InputDocumentation(doc="Classification results."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runmetaphyler_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

