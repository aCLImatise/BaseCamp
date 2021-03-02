from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Train_Start_Pwm_Pl_V0_1_0 = CommandToolBuilder(tool="train_start_PWM.pl", base_command=["train_start_PWM.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Train_Start_Pwm_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

