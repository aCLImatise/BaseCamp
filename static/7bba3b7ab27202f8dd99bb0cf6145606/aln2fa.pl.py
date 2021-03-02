from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Aln2Fa_Pl_V0_1_0 = CommandToolBuilder(tool="aln2fa.pl", base_command=["aln2fa.pl"], inputs=[ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Full documentation")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose")), ToolInput(tag="in_de_gap", input_type=Boolean(optional=True), prefix="--degap", doc=InputDocumentation(doc="Remove gaps from sequences")), ToolInput(tag="in_brief", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_full", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_help", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aln2Fa_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

