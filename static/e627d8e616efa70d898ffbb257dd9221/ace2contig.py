from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Ace2Contig_V0_1_0 = CommandToolBuilder(tool="ace2contig", base_command=["ace2contig"], inputs=[ToolInput(tag="in_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="file")), ToolInput(tag="in_prefix_output_prefixcontig", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="prefix (output is <prefix>.contig)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ace2Contig_V0_1_0().translate("wdl", allow_empty_container=True)

