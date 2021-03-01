from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String, Int

Quasitools_Call_Codonvar_V0_1_0 = CommandToolBuilder(tool="quasitools_call_codonvar", base_command=["quasitools", "call", "codonvar"], inputs=[ToolInput(tag="in_error_rate", input_type=Float(optional=True), prefix="--error_rate", doc=InputDocumentation(doc="estimated sequencing error rate.")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_offset", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_four_file", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quasitools_Call_Codonvar_V0_1_0().translate("wdl", allow_empty_container=True)

