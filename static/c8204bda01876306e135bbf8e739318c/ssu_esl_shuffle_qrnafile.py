from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ssu_Esl_Shuffle_Qrnafile_V0_1_0 = CommandToolBuilder(tool="ssu_esl_shuffle_qrnafile", base_command=["ssu-esl-shuffle", "qrnafile"], inputs=[ToolInput(tag="in_g", input_type=Boolean(optional=True), prefix="-G", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="")), ToolInput(tag="in_ssu_esl_shuffle", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_msa_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Esl_Shuffle_Qrnafile_V0_1_0().translate("wdl", allow_empty_container=True)

