from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bwa_Mem2_Avx512Bw_Index_V0_1_0 = CommandToolBuilder(tool="bwa_mem2.avx512bw_index", base_command=["bwa-mem2.avx512bw", "index"], inputs=[ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bwa-mem2:2.2.1--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwa_Mem2_Avx512Bw_Index_V0_1_0().translate("wdl")

