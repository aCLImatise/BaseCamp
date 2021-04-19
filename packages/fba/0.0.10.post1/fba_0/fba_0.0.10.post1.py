from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fba_0_0_10_Post1_V0_1_0 = CommandToolBuilder(tool="fba_0.0.10.post1", base_command=["fba", "0.0.10.post1"], inputs=[ToolInput(tag="in_fba", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fba_0_0_10_Post1_V0_1_0().translate("wdl")

