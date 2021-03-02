from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Process_Minout_Perl_V0_1_0 = CommandToolBuilder(tool="process_minout.perl", base_command=["process_minout.perl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Process_Minout_Perl_V0_1_0().translate("wdl", allow_empty_container=True)

