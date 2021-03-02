from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Mean_Sh_V0_1_0 = CommandToolBuilder(tool="make_mean.sh", base_command=["make-mean.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/chromeister:1.5.a--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Mean_Sh_V0_1_0().translate("wdl")

