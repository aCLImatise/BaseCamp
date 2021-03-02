from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Samtools_Bedcov_V0_1_0 = CommandToolBuilder(tool="samtools_bedcov", base_command=["samtools", "bedcov"], inputs=[ToolInput(tag="in_in_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Bedcov_V0_1_0().translate("wdl", allow_empty_container=True)

