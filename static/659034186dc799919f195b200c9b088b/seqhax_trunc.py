from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Seqhax_Trunc_V0_1_0 = CommandToolBuilder(tool="seqhax_trunc", base_command=["seqhax", "trunc"], inputs=[ToolInput(tag="in_fixed_integer_length", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Fixed (integer) length to truncate at.")), ToolInput(tag="in_truncate_prop_length", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Truncate at PROP * length bases"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqhax_Trunc_V0_1_0().translate("wdl", allow_empty_container=True)

