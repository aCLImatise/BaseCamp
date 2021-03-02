from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mergestatetrees_V0_1_0 = CommandToolBuilder(tool="mergestatetrees", base_command=["mergestatetrees"], inputs=[ToolInput(tag="in_state_tree_file_n", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/decifer:0.0.2--py27ha58320b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergestatetrees_V0_1_0().translate("wdl")

