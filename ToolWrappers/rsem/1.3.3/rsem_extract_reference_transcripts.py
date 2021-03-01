from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Rsem_Extract_Reference_Transcripts_V0_1_0 = CommandToolBuilder(tool="rsem_extract_reference_transcripts", base_command=["rsem-extract-reference-transcripts"], inputs=[ToolInput(tag="in_refname", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_quiet", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_gt_ff", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_sources", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_has_mapping_file", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_mapping_file", input_type=String(optional=True), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_chromosome_file_one", input_type=Int(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_chromosome_file_two", input_type=Int(optional=True), position=7, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Extract_Reference_Transcripts_V0_1_0().translate("wdl", allow_empty_container=True)

