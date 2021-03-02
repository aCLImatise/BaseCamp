from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Manage_Db_Rb_V0_1_0 = CommandToolBuilder(tool="manage_db.rb", base_command=["manage_db.rb"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dbname", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Manage_Db_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

