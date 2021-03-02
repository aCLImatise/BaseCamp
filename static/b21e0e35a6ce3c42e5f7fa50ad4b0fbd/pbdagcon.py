from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Pbdagcon_V0_1_0 = CommandToolBuilder(tool="pbdagcon", base_command=["pbdagcon"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turns on verbose logging")), ToolInput(tag="in_align", input_type=Boolean(optional=True), prefix="--align", doc=InputDocumentation(doc="Align sequences before adding to consensus")), ToolInput(tag="in_trim", input_type=Int(optional=True), prefix="--trim", doc=InputDocumentation(doc="Trim alignments on either size")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Minimum length for correction")), ToolInput(tag="in_min_coverage", input_type=Int(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="Minimum coverage for correction")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of consensus threads"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbdagcon_V0_1_0().translate("wdl", allow_empty_container=True)

