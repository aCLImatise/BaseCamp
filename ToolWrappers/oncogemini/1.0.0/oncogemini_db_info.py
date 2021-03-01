from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Oncogemini_Db_Info_V0_1_0 = CommandToolBuilder(tool="oncogemini_db_info", base_command=["oncogemini", "db_info"], inputs=[ToolInput(tag="in_db", input_type=String(), position=0, doc=InputDocumentation(doc="The name of the database to be updated."))], outputs=[], container="quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncogemini_Db_Info_V0_1_0().translate("wdl")

