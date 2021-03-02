from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Download_Metaseq_Example_Data_Py_V0_1_0 = CommandToolBuilder(tool="download_metaseq_example_data.py", base_command=["download_metaseq_example_data.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Download_Metaseq_Example_Data_Py_V0_1_0().translate("wdl", allow_empty_container=True)

