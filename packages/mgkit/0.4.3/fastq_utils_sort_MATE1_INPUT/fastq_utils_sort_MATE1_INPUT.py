from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Fastq_Utils_Sort_Mate1_Input_V0_1_0 = CommandToolBuilder(tool="fastq_utils_sort_MATE1_INPUT", base_command=["fastq-utils", "sort", "MATE1_INPUT"], inputs=[ToolInput(tag="in_mate_two_output", input_type=Int(), position=0, doc=InputDocumentation(doc="Sort paired-end sequences from [mate1-input] and [mate2-input] into files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Utils_Sort_Mate1_Input_V0_1_0().translate("wdl", allow_empty_container=True)

