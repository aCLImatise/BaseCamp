from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Count_Table_Fields_Pl_V0_1_0 = CommandToolBuilder(tool="count_table_fields.pl", base_command=["count_table_fields.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Count_Table_Fields_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

