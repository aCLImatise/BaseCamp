from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Biopet_Validatefastq_V0_1_0 = CommandToolBuilder(tool="biopet_validatefastq", base_command=["biopet-validatefastq"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'")), ToolInput(tag="in_fast_q_one", input_type=File(optional=True), prefix="--fastq1", doc=InputDocumentation(doc="FASTQ file to be validated. (Required)")), ToolInput(tag="in_fast_q_two", input_type=File(optional=True), prefix="--fastq2", doc=InputDocumentation(doc="Second FASTQ to be validated if FASTQs are paired. (Optional)")), ToolInput(tag="in_validate_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biopet_Validatefastq_V0_1_0().translate("wdl", allow_empty_container=True)

