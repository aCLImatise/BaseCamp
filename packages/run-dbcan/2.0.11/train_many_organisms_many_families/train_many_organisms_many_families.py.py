from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Train_Many_Organisms_Many_Families_Py_V0_1_0 = CommandToolBuilder(tool="train_many_organisms_many_families.py", base_command=["train_many_organisms_many_families.py"], inputs=[], outputs=[], container="quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Train_Many_Organisms_Many_Families_Py_V0_1_0().translate("wdl")

