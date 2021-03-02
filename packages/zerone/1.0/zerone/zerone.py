from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Zerone_V0_1_0 = CommandToolBuilder(tool="zerone", base_command=["zerone"], inputs=[ToolInput(tag="in_mock", input_type=Boolean(optional=True), prefix="--mock", doc=InputDocumentation(doc=": given file is a mock control")), ToolInput(tag="in_chip", input_type=Boolean(optional=True), prefix="--chip", doc=InputDocumentation(doc=": given file is a ChIP-seq experiment")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="--window", doc=InputDocumentation(doc=": window size in bp (default 300)")), ToolInput(tag="in_quality", input_type=Boolean(optional=True), prefix="--quality", doc=InputDocumentation(doc=": minimum mapping quality (default 20)")), ToolInput(tag="in_list_output", input_type=Boolean(optional=True), prefix="--list-output", doc=InputDocumentation(doc=": output list of targets (default table)")), ToolInput(tag="in_confidence", input_type=Boolean(optional=True), prefix="--confidence", doc=InputDocumentation(doc=": print targets only with higher confidence\nrestricts intervals accordingly in list output")), ToolInput(tag="in_input_file_n", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zerone_V0_1_0().translate("wdl", allow_empty_container=True)

