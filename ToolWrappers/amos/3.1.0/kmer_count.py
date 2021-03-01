from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Kmer_Count_V0_1_0 = CommandToolBuilder(tool="kmer_count", base_command=["kmer-count"], inputs=[ToolInput(tag="in_km_er_cov", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_km_er", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmer_Count_V0_1_0().translate("wdl", allow_empty_container=True)

