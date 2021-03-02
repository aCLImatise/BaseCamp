from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Classification_Neural_Network_V0_1_0 = CommandToolBuilder(tool="classification_neural_network", base_command=["classification_neural_network"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Classification_Neural_Network_V0_1_0().translate("wdl", allow_empty_container=True)

