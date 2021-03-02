from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Settings_Nightly_Ini_V0_1_0 = CommandToolBuilder(tool="settings_nightly.ini", base_command=["settings_nightly.ini"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Settings_Nightly_Ini_V0_1_0().translate("wdl", allow_empty_container=True)

