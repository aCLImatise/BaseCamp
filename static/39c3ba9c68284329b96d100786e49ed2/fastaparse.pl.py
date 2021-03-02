from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Fastaparse_Pl_V0_1_0 = CommandToolBuilder(tool="fastaparse.pl", base_command=["fastaparse.pl"], inputs=[ToolInput(tag="in_only_output_entries", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="only output entries where the sequence is minimum int nts long")), ToolInput(tag="in_remove_entries_have", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="remove all entries that have a sequence that contains letters\nother than a,c,g,t,u,n,A,C,G,T,U,N.")), ToolInput(tag="in_output_progress", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="output progress"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaparse_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

