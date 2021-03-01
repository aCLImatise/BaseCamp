from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mango_Notebook_V0_1_0 = CommandToolBuilder(tool="mango_notebook", base_command=["mango-notebook"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mango_Notebook_V0_1_0().translate("wdl", allow_empty_container=True)

