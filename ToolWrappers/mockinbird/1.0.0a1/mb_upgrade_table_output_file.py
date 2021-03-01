from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Upgrade_Table_Output_File_V0_1_0 = CommandToolBuilder(tool="mb_upgrade_table_output_file", base_command=["mb-upgrade-table", "output_file"], inputs=[ToolInput(tag="in_mb_upgrade_table", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_table_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Upgrade_Table_Output_File_V0_1_0().translate("wdl", allow_empty_container=True)

