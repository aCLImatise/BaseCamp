from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Regression_Neural_Network_V0_1_0 = CommandToolBuilder(tool="regression_neural_network", base_command=["regression_neural_network"], inputs=[], outputs=[], container="quay.io/biocontainers/biobb_ml:3.5.0--pyhafabc51_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Regression_Neural_Network_V0_1_0().translate("wdl")

