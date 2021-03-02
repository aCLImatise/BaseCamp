from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Taxgetup_V0_1_0 = CommandToolBuilder(tool="taxgetup", base_command=["taxgetup"], inputs=[ToolInput(tag="in_hidden", input_type=Boolean(optional=True), prefix="-hidden", doc=InputDocumentation(doc="boolean    [N] Show taxons hidden in GenBank"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxgetup_V0_1_0().translate("wdl", allow_empty_container=True)

