from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Prepreference_Sh_V0_1_0 = CommandToolBuilder(tool="prepReference.sh", base_command=["prepReference.sh"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force processing even when result files already exist\nand are newer than inputs (default: False)")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose message level (0=no info, 5=lots) (default: 1)")), ToolInput(tag="in_cfsan_snp_pipeline", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_ref", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prepreference_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

