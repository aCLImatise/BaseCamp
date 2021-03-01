from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bioblend_Galaxy_Tests_V0_1_0 = CommandToolBuilder(tool="bioblend_galaxy_tests", base_command=["bioblend-galaxy-tests"], inputs=[], outputs=[], container="quay.io/biocontainers/bioblend:0.15.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioblend_Galaxy_Tests_V0_1_0().translate("wdl")

