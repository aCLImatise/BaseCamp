from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maf_Mapping_Word_Frequency_Py_V0_1_0 = CommandToolBuilder(tool="maf_mapping_word_frequency.py", base_command=["maf_mapping_word_frequency.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maf_Mapping_Word_Frequency_Py_V0_1_0().translate("wdl", allow_empty_container=True)

