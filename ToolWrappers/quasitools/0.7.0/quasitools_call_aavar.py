from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String, Int

Quasitools_Call_Aavar_V0_1_0 = CommandToolBuilder(tool="quasitools_call_aavar", base_command=["quasitools", "call", "aavar"], inputs=[ToolInput(tag="in_min_freq", input_type=Float(optional=True), prefix="--min_freq", doc=InputDocumentation(doc="the minimum required frequency.")), ToolInput(tag="in_error_rate", input_type=Float(optional=True), prefix="--error_rate", doc=InputDocumentation(doc="estimated sequencing error rate.")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_four_file", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_variants", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quasitools_Call_Aavar_V0_1_0().translate("wdl", allow_empty_container=True)

