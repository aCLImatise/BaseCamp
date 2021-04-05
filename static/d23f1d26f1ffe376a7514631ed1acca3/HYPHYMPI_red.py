from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hyphympi_Red_V0_1_0 = CommandToolBuilder(tool="HYPHYMPI_red", base_command=["HYPHYMPI", "red"], inputs=[ToolInput(tag="in_branch_under_condition", input_type=String(), position=0, doc=InputDocumentation(doc="Branch under condition 'doLengths<0.5'")), ToolInput(tag="in_to", input_type=String(), position=1, doc=InputDocumentation(doc="return RerootTree(treeString,0);")), ToolInput(tag="in_return_treestring", input_type=String(), position=2, doc=InputDocumentation(doc="return treeString;"))], outputs=[], container="quay.io/biocontainers/hyphy:2.5.30--h3db2f75_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hyphympi_Red_V0_1_0().translate("wdl")

