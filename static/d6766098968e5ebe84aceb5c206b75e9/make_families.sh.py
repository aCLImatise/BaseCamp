from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Make_Families_Sh_V0_1_0 = CommandToolBuilder(tool="make_families.sh", base_command=["make-families.sh"], inputs=[ToolInput(tag="in_length_barcode_portion", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc=": The length of the barcode portion of each read. Default: 12")), ToolInput(tag="in_length_invariant_ligation", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": The length of the invariant (ligation) portion of each read. Default: 5"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Families_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

