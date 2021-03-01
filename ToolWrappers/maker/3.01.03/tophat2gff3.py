from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Tophat2Gff3_V0_1_0 = CommandToolBuilder(tool="tophat2gff3", base_command=["tophat2gff3"], inputs=[ToolInput(tag="in_description", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_three", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_format", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_script", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_conver_sts", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_for", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_use", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_juc_tions", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_with", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_product_ed", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_by", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_top_hat", input_type=String(), position=8, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tophat2Gff3_V0_1_0().translate("wdl")

