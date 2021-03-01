from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Phyluce_Ncbi_Example_Prep_Conf_V0_1_0 = CommandToolBuilder(tool="phyluce_ncbi_example_prep.conf", base_command=["phyluce_ncbi_example-prep.conf"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Ncbi_Example_Prep_Conf_V0_1_0().translate("wdl", allow_empty_container=True)

