from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Lorikeet_Kmer_V0_1_0 = CommandToolBuilder(tool="lorikeet_kmer", base_command=["lorikeet", "kmer"], inputs=[ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lorikeet_Kmer_V0_1_0().translate("wdl", allow_empty_container=True)

