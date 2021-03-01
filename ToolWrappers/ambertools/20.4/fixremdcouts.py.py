from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Fixremdcouts_Py_V0_1_0 = CommandToolBuilder(tool="fixremdcouts.py", base_command=["fixremdcouts.py"], inputs=[ToolInput(tag="in_author", input_type=Boolean(optional=True), prefix="--author", doc=InputDocumentation(doc="show the program's author name and exit")), ToolInput(tag="in_overwrite", input_type=Boolean(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="Allow existing outputs to be overwritten. Default:")), ToolInput(tag="in_couts", input_type=Boolean(optional=True), prefix="-couts", doc=InputDocumentation(doc="[FILE [FILE ...]]\nAMBER CPOUT and/or CEOUT files")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="-prefix", doc=InputDocumentation(doc="Prefix of the reordered file names. Default: reordered")), ToolInput(tag="in_false", input_type=String(), position=0, doc=InputDocumentation(doc="Required Arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fixremdcouts_Py_V0_1_0().translate("wdl", allow_empty_container=True)

