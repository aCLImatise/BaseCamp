from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Intrahost_Py_Allele__V0_1_0 = CommandToolBuilder(tool="intrahost.py_allele.", base_command=["intrahost.py", "allele."], inputs=[ToolInput(tag="in_intra_host_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_subcommand", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Intrahost_Py_Allele__V0_1_0().translate("wdl", allow_empty_container=True)

