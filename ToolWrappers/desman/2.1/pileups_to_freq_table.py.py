from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pileups_To_Freq_Table_Py_V0_1_0 = CommandToolBuilder(tool="pileups_to_freq_table.py", base_command=["pileups_to_freq_table.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pileups_To_Freq_Table_Py_V0_1_0().translate("wdl", allow_empty_container=True)

