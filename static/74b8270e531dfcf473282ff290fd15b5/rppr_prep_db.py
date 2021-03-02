from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rppr_Prep_Db_V0_1_0 = CommandToolBuilder(tool="rppr_prep_db", base_command=["rppr", "prep_db"], inputs=[ToolInput(tag="in_reference_package_path", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Reference package path. Required.")), ToolInput(tag="in_sqlite", input_type=Boolean(optional=True), prefix="--sqlite", doc=InputDocumentation(doc="Specify the database file to use. Required.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_prep_db", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rppr_Prep_Db_V0_1_0().translate("wdl", allow_empty_container=True)

