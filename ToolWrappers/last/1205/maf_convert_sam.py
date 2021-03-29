from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maf_Convert_Sam_V0_1_0 = CommandToolBuilder(tool="maf_convert_sam", base_command=["maf-convert", "sam"], inputs=[ToolInput(tag="in_maf_convert", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_axt", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_blast", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_blast_tab", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_chain", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_html", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_psl", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tab", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_maf_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/last:1205--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Convert_Sam_V0_1_0().translate("wdl")

