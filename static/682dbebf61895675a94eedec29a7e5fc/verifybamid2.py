from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Verifybamid2_V0_1_0 = CommandToolBuilder(tool="verifybamid2", base_command=["verifybamid2"], inputs=[ToolInput(tag="in_svd_prefix", input_type=Boolean(optional=True), prefix="--SVDPrefix", doc=InputDocumentation(doc="[/usr/local/share/verifybamid2-1.0.6-1/resource/1000g.100k.b38.vcf.gz.dat],")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--Output", doc=InputDocumentation(doc="[result]")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--Reference", doc=InputDocumentation(doc="required"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Verifybamid2_V0_1_0().translate("wdl", allow_empty_container=True)

