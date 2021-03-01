from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsem_Synthesis_Reference_Transcripts_V0_1_0 = CommandToolBuilder(tool="rsem_synthesis_reference_transcripts", base_command=["rsem-synthesis-reference-transcripts"], inputs=[ToolInput(tag="in_synthesis_ref", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_refname", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_quiet", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_has_mapping_file", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Synthesis_Reference_Transcripts_V0_1_0().translate("wdl", allow_empty_container=True)

