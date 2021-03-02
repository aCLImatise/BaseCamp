from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pluginrawthermo2_Dll_V0_1_0 = CommandToolBuilder(tool="PluginRawThermo2.dll", base_command=["PluginRawThermo2.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pluginrawthermo2_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

