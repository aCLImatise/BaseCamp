from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Recallconsensus_V0_1_0 = CommandToolBuilder(tool="recallConsensus", base_command=["recallConsensus"], inputs=[ToolInput(tag="in_bank", input_type=Boolean(optional=True), prefix="-bank", doc=InputDocumentation(doc="Bank where assembly is stored")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="Be verbose")), ToolInput(tag="in_ambiguity", input_type=Boolean(optional=True), prefix="-ambiguity", doc=InputDocumentation(doc="Use Ambiguity Codes"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Recallconsensus_V0_1_0().translate("wdl", allow_empty_container=True)

