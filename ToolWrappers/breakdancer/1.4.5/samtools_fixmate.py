from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Samtools_Fixmate_V0_1_0 = CommandToolBuilder(tool="samtools_fixmate", base_command=["samtools", "fixmate"], inputs=[ToolInput(tag="in_remove_unmapped_reads", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="remove unmapped reads and secondary alignments")), ToolInput(tag="in_in_dot_names_rt_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_names_rt_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Fixmate_V0_1_0().translate("wdl", allow_empty_container=True)

