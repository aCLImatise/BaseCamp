from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Combig_Script_Sh_V0_1_0 = CommandToolBuilder(tool="combig_script.sh", base_command=["combig-script.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combig_Script_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

