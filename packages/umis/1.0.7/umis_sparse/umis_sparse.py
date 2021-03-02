from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Umis_Sparse_V0_1_0 = CommandToolBuilder(tool="umis_sparse", base_command=["umis", "sparse"], inputs=[ToolInput(tag="in_csv", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sparse", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Umis_Sparse_V0_1_0().translate("wdl", allow_empty_container=True)

