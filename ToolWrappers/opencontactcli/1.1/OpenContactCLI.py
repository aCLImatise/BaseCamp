from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Opencontactcli_V0_1_0 = CommandToolBuilder(tool="OpenContactCLI", base_command=["OpenContactCLI"], inputs=[ToolInput(tag="in_prot_a", input_type=File(optional=True), prefix="--protA", doc=InputDocumentation(doc="Path to proteinA.pdb")), ToolInput(tag="in_prot_b", input_type=File(optional=True), prefix="--protB", doc=InputDocumentation(doc="Path to proteinB.pdb")), ToolInput(tag="in_prot_a_chain", input_type=String(optional=True), prefix="--protA_chain", doc=InputDocumentation(doc="proteinA chain")), ToolInput(tag="in_prot_b_chain", input_type=String(optional=True), prefix="--protB_chain", doc=InputDocumentation(doc="proteinB chain")), ToolInput(tag="in_tabular", input_type=Boolean(optional=True), prefix="--tabular", doc=InputDocumentation(doc="Create tab separated map files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Opencontactcli_V0_1_0().translate("wdl", allow_empty_container=True)

