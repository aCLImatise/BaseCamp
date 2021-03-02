from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Oncogemini_Amend_V0_1_0 = CommandToolBuilder(tool="oncogemini_amend", base_command=["oncogemini", "amend"], inputs=[ToolInput(tag="in_sample", input_type=File(optional=True), prefix="--sample", doc=InputDocumentation(doc="New sample information file to load")), ToolInput(tag="in_clear", input_type=Boolean(optional=True), prefix="--clear", doc=InputDocumentation(doc="Set all values in this column to NULL before loading.")), ToolInput(tag="in_db", input_type=String(), position=0, doc=InputDocumentation(doc="The name of the database to be amended."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncogemini_Amend_V0_1_0().translate("wdl", allow_empty_container=True)

