from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sanity_Check_Mapping_File_Pl_V0_1_0 = CommandToolBuilder(tool="sanity_check_mapping_file.pl", base_command=["sanity_check_mapping_file.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sanity_Check_Mapping_File_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

