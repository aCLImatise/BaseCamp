from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Intrahost_Py_Fws_V0_1_0 = CommandToolBuilder(tool="intrahost.py_Fws", base_command=["intrahost.py", "Fws"], inputs=[ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Verboseness of output. [default: DEBUG]")), ToolInput(tag="in_in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="Input VCF file")), ToolInput(tag="in_out_vcf", input_type=String(), position=1, doc=InputDocumentation(doc="Output VCF file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Intrahost_Py_Fws_V0_1_0().translate("wdl", allow_empty_container=True)

