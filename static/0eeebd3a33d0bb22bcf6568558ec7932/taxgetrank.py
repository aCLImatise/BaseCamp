from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Taxgetrank_V0_1_0 = CommandToolBuilder(tool="taxgetrank", base_command=["taxgetrank"], inputs=[ToolInput(tag="in_hidden", input_type=Boolean(optional=True), prefix="-hidden", doc=InputDocumentation(doc="boolean    [N] Show taxons hidden in GenBank"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxgetrank_V0_1_0().translate("wdl", allow_empty_container=True)

