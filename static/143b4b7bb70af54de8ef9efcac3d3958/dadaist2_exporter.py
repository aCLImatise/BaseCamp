from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dadaist2_Exporter_V0_1_0 = CommandToolBuilder(tool="dadaist2_exporter", base_command=["dadaist2-exporter"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Exporter_V0_1_0().translate("wdl")

