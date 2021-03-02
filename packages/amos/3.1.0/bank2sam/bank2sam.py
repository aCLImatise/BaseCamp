from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bank2Sam_V0_1_0 = CommandToolBuilder(tool="bank2sam", base_command=["bank2sam"], inputs=[ToolInput(tag="in_the_bank_operated", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="The bank to be operated on.")), ToolInput(tag="in_use_contigs_reference", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Use contigs as reference")), ToolInput(tag="in_use_scaffolds_reference", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Use scaffolds as reference")), ToolInput(tag="in_use_iids_is", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Use IIDs as query template name (EIDs is default.)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bank2Sam_V0_1_0().translate("wdl", allow_empty_container=True)

