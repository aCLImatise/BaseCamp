from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Settings_Ini_Example_V0_1_0 = CommandToolBuilder(tool="settings.ini.example", base_command=["settings.ini.example"], inputs=[], outputs=[], container="quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Settings_Ini_Example_V0_1_0().translate("wdl")

