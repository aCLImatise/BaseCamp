from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Hgfakeagp_V0_1_0 = CommandToolBuilder(tool="hgFakeAgp", base_command=["hgFakeAgp"], inputs=[ToolInput(tag="in_min_contig_gap", input_type=Int(optional=True), prefix="-minContigGap", doc=InputDocumentation(doc="Minimum size for a gap between contigs.  Default 25")), ToolInput(tag="in_min_scaffold_gap", input_type=Int(optional=True), prefix="-minScaffoldGap", doc=InputDocumentation(doc="Min size for a gap between scaffolds. Default 50000")), ToolInput(tag="in_single_contigs", input_type=Boolean(optional=True), prefix="-singleContigs", doc=InputDocumentation(doc="- when a full sequence has no gaps, maintain contig\nname without adding index extension.\n")), ToolInput(tag="in_input_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hgfakeagp_V0_1_0().translate("wdl", allow_empty_container=True)

