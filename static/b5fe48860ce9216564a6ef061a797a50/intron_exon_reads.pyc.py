from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Intron_Exon_Reads_Pyc_V0_1_0 = CommandToolBuilder(tool="intron_exon_reads.pyc", base_command=["intron_exon_reads.pyc"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Intron_Exon_Reads_Pyc_V0_1_0().translate("wdl", allow_empty_container=True)

