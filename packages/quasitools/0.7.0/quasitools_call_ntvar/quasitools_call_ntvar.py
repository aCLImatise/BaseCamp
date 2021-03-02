from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String

Quasitools_Call_Ntvar_V0_1_0 = CommandToolBuilder(tool="quasitools_call_ntvar", base_command=["quasitools", "call", "ntvar"], inputs=[ToolInput(tag="in_error_rate", input_type=Float(optional=True), prefix="--error_rate", doc=InputDocumentation(doc="estimated sequencing error rate.")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quasitools_Call_Ntvar_V0_1_0().translate("wdl", allow_empty_container=True)

