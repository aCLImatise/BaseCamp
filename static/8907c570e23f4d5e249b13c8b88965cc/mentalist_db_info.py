from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mentalist_Db_Info_V0_1_0 = CommandToolBuilder(tool="mentalist_db_info", base_command=["mentalist", "db_info"], inputs=[ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="MentaLiST kmer database"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mentalist_Db_Info_V0_1_0().translate("wdl", allow_empty_container=True)

