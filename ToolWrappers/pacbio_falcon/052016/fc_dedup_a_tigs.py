from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Fc_Dedup_A_Tigs_V0_1_0 = CommandToolBuilder(tool="fc_dedup_a_tigs", base_command=["fc_dedup_a_tigs"], inputs=[ToolInput(tag="in_max_aln_cov", input_type=Int(optional=True), prefix="--max_aln_cov", doc=InputDocumentation(doc="")), ToolInput(tag="in_max_idt", input_type=Int(optional=True), prefix="--max_idt", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Dedup_A_Tigs_V0_1_0().translate("wdl", allow_empty_container=True)

