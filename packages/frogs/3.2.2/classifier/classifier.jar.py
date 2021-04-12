from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Classifier_Jar_V0_1_0 = CommandToolBuilder(tool="classifier.jar", base_command=["classifier.jar"], inputs=[], outputs=[], container="quay.io/biocontainers/frogs:3.2.2--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Classifier_Jar_V0_1_0().translate("wdl")

