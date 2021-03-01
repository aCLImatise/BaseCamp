from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Biosails_Biox_Render_Py_V0_1_0 = CommandToolBuilder(tool="biosails_biox_render.py", base_command=["biosails-biox-render.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biosails_Biox_Render_Py_V0_1_0().translate("wdl", allow_empty_container=True)

