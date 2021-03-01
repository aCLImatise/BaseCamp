from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Sequana_Fastq_Count_V0_1_0 = CommandToolBuilder(tool="sequana_fastq_count", base_command=["sequana_fastq_count"], inputs=[ToolInput(tag="in_input_fastq_gzipped", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input fastq gzipped or not\n")), ToolInput(tag="in_fast_q_count", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_2", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Fastq_Count_V0_1_0().translate("wdl", allow_empty_container=True)

