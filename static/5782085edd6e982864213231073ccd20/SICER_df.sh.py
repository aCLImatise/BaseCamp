from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sicer_Df_Sh_V0_1_0 = CommandToolBuilder(tool="SICER_df.sh", base_command=["SICER-df.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sicer_Df_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

