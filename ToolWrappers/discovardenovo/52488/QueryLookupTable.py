from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Querylookuptable_V0_1_0 = CommandToolBuilder(tool="QueryLookupTable", base_command=["QueryLookupTable"], inputs=[ToolInput(tag="in_arg_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Querylookuptable_V0_1_0().translate("wdl", allow_empty_container=True)

