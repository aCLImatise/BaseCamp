from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arb_Dnarates_Dbname_V0_1_0 = CommandToolBuilder(tool="arb_dnarates_dbname", base_command=["arb_dnarates", "dbname"], inputs=[ToolInput(tag="in_arb_dna_rates", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_dbname", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_db_save_name", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_Dnarates_Dbname_V0_1_0().translate("wdl", allow_empty_container=True)

