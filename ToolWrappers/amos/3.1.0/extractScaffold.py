from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Extractscaffold_V0_1_0 = CommandToolBuilder(tool="extractScaffold", base_command=["extractScaffold"], inputs=[ToolInput(tag="in__bank_operated", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="- The bank to be operated on.")), ToolInput(tag="in_iid_scaffold_extracted", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="- The IID of the scaffold the be extracted .")), ToolInput(tag="in_name_new_bank", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="- The name of the new bank consisting of the.")), ToolInput(tag="in_list_scaffolds_stdout", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="- list the scaffolds in the given bank to stdout. The order is"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractscaffold_V0_1_0().translate("wdl", allow_empty_container=True)

