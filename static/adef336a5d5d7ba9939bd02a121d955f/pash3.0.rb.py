from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pash3_0_Rb_V0_1_0 = CommandToolBuilder(tool="pash3.0.rb", base_command=["pash3.0.rb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pash3_0_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

