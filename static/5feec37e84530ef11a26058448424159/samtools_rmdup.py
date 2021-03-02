from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Samtools_Rmdup_V0_1_0 = CommandToolBuilder(tool="samtools_rmdup", base_command=["samtools", "rmdup"], inputs=[ToolInput(tag="in_rmdup_se_reads", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="rmdup for SE reads")), ToolInput(tag="in_treat_pe_reads", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="treat PE reads as SE in rmdup (force -s)")), ToolInput(tag="in_ss", input_type=Boolean(optional=True), prefix="-sS", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dots_rt_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Rmdup_V0_1_0().translate("wdl", allow_empty_container=True)

