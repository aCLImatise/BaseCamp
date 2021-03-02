from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vsnp_Excel_Merge_Files_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_excel_merge_files.py", base_command=["vsnp_excel_merge_files.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Excel_Merge_Files_Py_V0_1_0().translate("wdl", allow_empty_container=True)

