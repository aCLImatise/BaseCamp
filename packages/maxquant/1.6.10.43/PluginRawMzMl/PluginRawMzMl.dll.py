from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pluginrawmzml_Dll_V0_1_0 = CommandToolBuilder(tool="PluginRawMzMl.dll", base_command=["PluginRawMzMl.dll"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pluginrawmzml_Dll_V0_1_0().translate("wdl", allow_empty_container=True)

