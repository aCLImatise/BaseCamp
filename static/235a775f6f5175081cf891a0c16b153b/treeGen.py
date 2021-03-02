from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Treegen_V0_1_0 = CommandToolBuilder(tool="treeGen", base_command=["treeGen"], inputs=[ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="treeGen '*speciesFile' ['*groupFile'] > outfile")), ToolInput(tag="in_assignment_dot", input_type=String(), position=0, doc=InputDocumentation(doc="The integers should appear in the same order as the"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treegen_V0_1_0().translate("wdl", allow_empty_container=True)

