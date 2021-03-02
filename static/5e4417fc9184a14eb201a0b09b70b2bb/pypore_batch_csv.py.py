from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pypore_Batch_Csv_Py_V0_1_0 = CommandToolBuilder(tool="pypore_batch_csv.py", base_command=["pypore_batch_csv.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pypore_Batch_Csv_Py_V0_1_0().translate("wdl", allow_empty_container=True)

