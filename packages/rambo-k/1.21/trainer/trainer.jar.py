from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Trainer_Jar_V0_1_0 = CommandToolBuilder(tool="trainer.jar", base_command=["trainer.jar"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trainer_Jar_V0_1_0().translate("wdl", allow_empty_container=True)

