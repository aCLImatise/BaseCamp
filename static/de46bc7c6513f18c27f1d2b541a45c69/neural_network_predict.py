from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Neural_Network_Predict_V0_1_0 = CommandToolBuilder(tool="neural_network_predict", base_command=["neural_network_predict"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Neural_Network_Predict_V0_1_0().translate("wdl", allow_empty_container=True)

