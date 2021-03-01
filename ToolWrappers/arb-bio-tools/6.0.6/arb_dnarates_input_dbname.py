from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arb_Dnarates_Input_Dbname_V0_1_0 = CommandToolBuilder(tool="arb_dnarates_input_dbname", base_command=["arb_dnarates", "input", "dbname"], inputs=[ToolInput(tag="in_db_save_name", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_Dnarates_Input_Dbname_V0_1_0().translate("wdl", allow_empty_container=True)

