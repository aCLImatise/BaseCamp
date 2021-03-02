from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Compare_Predictions_To_Phages_Py_V0_1_0 = CommandToolBuilder(tool="compare_predictions_to_phages.py", base_command=["compare_predictions_to_phages.py"], inputs=[], outputs=[], container="quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Predictions_To_Phages_Py_V0_1_0().translate("wdl")

