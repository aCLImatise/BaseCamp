from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Readme_Autoaug_V0_1_0 = CommandToolBuilder(tool="README.autoAug", base_command=["README.autoAug"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readme_Autoaug_V0_1_0().translate("wdl", allow_empty_container=True)

