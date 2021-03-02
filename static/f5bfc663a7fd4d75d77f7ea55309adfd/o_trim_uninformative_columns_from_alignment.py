from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


O_Trim_Uninformative_Columns_From_Alignment_V0_1_0 = CommandToolBuilder(tool="o_trim_uninformative_columns_from_alignment", base_command=["o-trim-uninformative-columns-from-alignment"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Trim_Uninformative_Columns_From_Alignment_V0_1_0().translate("wdl", allow_empty_container=True)

