from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tigger_V0_1_0 = CommandToolBuilder(tool="tigger", base_command=["tigger"], inputs=[ToolInput(tag="in_write_contig_graphs", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Write contig graphs as dot files (fullgraph.dot and Contig-*.dot)")), ToolInput(tag="in_verbose_level", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose level"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tigger_V0_1_0().translate("wdl", allow_empty_container=True)

