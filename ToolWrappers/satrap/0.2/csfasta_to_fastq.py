from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Csfasta_To_Fastq_V0_1_0 = CommandToolBuilder(tool="csfasta_to_fastq", base_command=["csfasta_to_fastq"], inputs=[ToolInput(tag="in_cs_fast_a", input_type=Boolean(optional=True), prefix="-csfasta", doc=InputDocumentation(doc="(string)        input SOLiD csfasta file.")), ToolInput(tag="in_qual", input_type=Boolean(optional=True), prefix="-qual", doc=InputDocumentation(doc="(string)        input SOLiD quality file.")), ToolInput(tag="in_warning", input_type=Boolean(optional=True), prefix="-warning", doc=InputDocumentation(doc="it reports warnigs to stderr")), ToolInput(tag="in_log", input_type=Boolean(optional=True), prefix="-log", doc=InputDocumentation(doc="(string)        log file.")), ToolInput(tag="in_cs_fast_a_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csfasta_To_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

