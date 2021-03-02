from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


System_Text_Encoding_Codepages_Dll_V0_1_0 = CommandToolBuilder(tool="System.Text.Encoding.CodePages.dll", base_command=["System.Text.Encoding.CodePages.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    System_Text_Encoding_Codepages_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

