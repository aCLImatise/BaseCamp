from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Genomecoveragebed_Pl_V0_1_0 = CommandToolBuilder(tool="genomeCoverageBed.pl", base_command=["genomeCoverageBed.pl"], inputs=[ToolInput(tag="in_exist_usrlocalbingenomecoveragebedpl_line", input_type=Int(optional=True), prefix="-h", doc=InputDocumentation(doc="not exist at /usr/local/bin/genomeCoverageBed.pl line 10."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomecoveragebed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

