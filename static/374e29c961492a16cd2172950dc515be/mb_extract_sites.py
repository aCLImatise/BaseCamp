from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Mb_Extract_Sites_V0_1_0 = CommandToolBuilder(tool="mb_extract_sites", base_command=["mb-extract-sites"], inputs=[ToolInput(tag="in_gff_file", input_type=File(optional=True), prefix="--gff_file", doc=InputDocumentation(doc="")), ToolInput(tag="in_transition_from", input_type=String(optional=True), prefix="--transition_from", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_file", input_type=String(), position=0, doc=InputDocumentation(doc="output_file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Extract_Sites_V0_1_0().translate("wdl", allow_empty_container=True)

