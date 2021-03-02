from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pluginrawbrukertdf_Dll_Config_V0_1_0 = CommandToolBuilder(tool="PluginRawBrukerTdf.dll.config", base_command=["PluginRawBrukerTdf.dll.config"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pluginrawbrukertdf_Dll_Config_V0_1_0().translate("wdl", allow_empty_container=True)

