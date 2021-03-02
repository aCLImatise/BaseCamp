from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Assign_Query_File_Smk_V0_1_0 = CommandToolBuilder(tool="assign_query_file.smk", base_command=["assign_query_file.smk"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assign_Query_File_Smk_V0_1_0().translate("wdl", allow_empty_container=True)

