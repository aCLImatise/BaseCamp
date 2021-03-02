from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Maf_Join_V0_1_0 = CommandToolBuilder(tool="maf_join", base_command=["maf-join"], inputs=[ToolInput(tag="in_sorted_file_two_dot_maf", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/last:1186--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Join_V0_1_0().translate("wdl")

