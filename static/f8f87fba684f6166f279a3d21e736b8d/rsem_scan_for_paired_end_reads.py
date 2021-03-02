from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsem_Scan_For_Paired_End_Reads_V0_1_0 = CommandToolBuilder(tool="rsem_scan_for_paired_end_reads", base_command=["rsem-scan-for-paired-end-reads"], inputs=[ToolInput(tag="in_number_of_threads", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Scan_For_Paired_End_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

