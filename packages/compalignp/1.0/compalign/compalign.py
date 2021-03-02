from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Compalign_V0_1_0 = CommandToolBuilder(tool="compalign", base_command=["compalign"], inputs=[ToolInput(tag="in_only_compare_marked", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": only compare under marked #=CS consensus structure")), ToolInput(tag="in_in_format", input_type=String(optional=True), prefix="--informat", doc=InputDocumentation(doc=": specify that both alignments are in format <s> (MSF, for instance)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc=": suppress verbose header (used in regression testing)")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_trusted_dot_ali", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_test_dot_ali", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compalign_V0_1_0().translate("wdl", allow_empty_container=True)

