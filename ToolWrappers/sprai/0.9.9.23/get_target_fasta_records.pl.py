from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Get_Target_Fasta_Records_Pl_V0_1_0 = CommandToolBuilder(tool="get_target_fasta_records.pl", base_command=["get_target_fasta_records.pl"], inputs=[ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_all_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Target_Fasta_Records_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

