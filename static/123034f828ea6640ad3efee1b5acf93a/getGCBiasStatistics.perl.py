from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Getgcbiasstatistics_Perl_V0_1_0 = CommandToolBuilder(tool="getGCBiasStatistics.perl", base_command=["getGCBiasStatistics.perl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getgcbiasstatistics_Perl_V0_1_0().translate("wdl", allow_empty_container=True)

