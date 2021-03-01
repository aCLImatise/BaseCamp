from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ansitable_List_Border_Styles_V0_1_0 = CommandToolBuilder(tool="ansitable_list_border_styles", base_command=["ansitable-list-border-styles"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ansitable_List_Border_Styles_V0_1_0().translate("wdl", allow_empty_container=True)

