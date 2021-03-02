from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Getorthologlist_V0_1_0 = CommandToolBuilder(tool="getOrthologList", base_command=["getOrthologList"], inputs=[ToolInput(tag="in_input_x_mfa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_backbone_seq_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference_genome", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_cds_ortholog_filename", input_type=File(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_cds_alignment_base_name", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getorthologlist_V0_1_0().translate("wdl", allow_empty_container=True)

