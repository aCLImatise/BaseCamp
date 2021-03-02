from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sequana_Fastq_Summary_V0_1_0 = CommandToolBuilder(tool="sequana_fastq_summary", base_command=["sequana_fastq_summary"], inputs=[ToolInput(tag="in_pattern", input_type=String(optional=True), prefix="--pattern", doc=InputDocumentation(doc="input fastq gzipped or not")), ToolInput(tag="in_se_quan_a_fast_q_count", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Fastq_Summary_V0_1_0().translate("wdl", allow_empty_container=True)

