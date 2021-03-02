from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mira_Install_Sls_Rrna_Sh_V0_1_0 = CommandToolBuilder(tool="mira_install_sls_rrna.sh", base_command=["mira-install-sls-rrna.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mira_Install_Sls_Rrna_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

