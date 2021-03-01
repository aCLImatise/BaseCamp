from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cds_Trainer_Pl_V0_1_0 = CommandToolBuilder(tool="cds_trainer.pl", base_command=["cds-trainer.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cds_Trainer_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

