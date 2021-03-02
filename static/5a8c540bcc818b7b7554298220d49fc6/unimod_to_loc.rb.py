from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Unimod_To_Loc_Rb_V0_1_0 = CommandToolBuilder(tool="unimod_to_loc.rb", base_command=["unimod_to_loc.rb"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unimod_To_Loc_Rb_V0_1_0().translate("wdl", allow_empty_container=True)

