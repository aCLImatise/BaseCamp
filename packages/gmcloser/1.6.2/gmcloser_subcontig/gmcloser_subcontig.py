from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gmcloser_Subcontig_V0_1_0 = CommandToolBuilder(tool="gmcloser_subcontig", base_command=["gmcloser", "subcontig"], inputs=[ToolInput(tag="in_target_s_caf", input_type=String(optional=True), prefix="--target_scaf", doc=InputDocumentation(doc="is not specied:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gmcloser_Subcontig_V0_1_0().translate("wdl", allow_empty_container=True)

