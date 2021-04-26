from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maf_Convert_Axt_V0_1_0 = CommandToolBuilder(tool="maf_convert_axt", base_command=["maf-convert", "axt"], inputs=[ToolInput(tag="in_maf_convert", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_maf_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_blast", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_blast_tab", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_chain", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_html", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_psl", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sam", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tab", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/last:1219--h2e03b76_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Convert_Axt_V0_1_0().translate("wdl")

