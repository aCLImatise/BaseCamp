from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rsem_Perl_Utils_Pm_V0_1_0 = CommandToolBuilder(tool="rsem_perl_utils.pm", base_command=["rsem_perl_utils.pm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Perl_Utils_Pm_V0_1_0().translate("wdl", allow_empty_container=True)

