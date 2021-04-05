from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hdf2Tf_Py_V0_1_0 = CommandToolBuilder(tool="hdf2tf.py", base_command=["hdf2tf.py"], inputs=[], outputs=[], container="quay.io/biocontainers/medaka:1.2.5--py38h64b100c_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hdf2Tf_Py_V0_1_0().translate("wdl")

