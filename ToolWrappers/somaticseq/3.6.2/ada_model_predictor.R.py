from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ada_Model_Predictor_R_V0_1_0 = CommandToolBuilder(tool="ada_model_predictor.R", base_command=["ada_model_predictor.R"], inputs=[], outputs=[], container="quay.io/biocontainers/somaticseq:3.6.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ada_Model_Predictor_R_V0_1_0().translate("wdl")

