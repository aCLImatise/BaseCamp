from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Snp_Indel_Count_Pl_V0_1_0 = CommandToolBuilder(tool="SNP_INDEL_count.pl", base_command=["SNP_INDEL_count.pl"], inputs=[ToolInput(tag="in_perl", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snp_Indel_Count_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

