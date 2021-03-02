from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Jasmine_Iris_Jar_V0_1_0 = CommandToolBuilder(tool="jasmine_iris.jar", base_command=["jasmine_iris.jar"], inputs=[], outputs=[], container="quay.io/biocontainers/jasminesv:1.0.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jasmine_Iris_Jar_V0_1_0().translate("wdl")

