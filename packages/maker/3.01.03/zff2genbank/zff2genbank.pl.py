from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Zff2Genbank_Pl_V0_1_0 = CommandToolBuilder(tool="zff2genbank.pl", base_command=["zff2genbank.pl"], inputs=[ToolInput(tag="in_export_dot_ann", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zff2Genbank_Pl_V0_1_0().translate("wdl")

