from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ipr_Update_Gff_V0_1_0 = CommandToolBuilder(tool="ipr_update_gff", base_command=["ipr_update_gff"], inputs=[ToolInput(tag="in_in_place", input_type=String(), position=0, doc=InputDocumentation(doc="Modify GFF3 files inplace, otherwise it prints to STDOUT"))], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ipr_Update_Gff_V0_1_0().translate("wdl")

