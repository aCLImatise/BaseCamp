from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Consentropy_V0_1_0 = CommandToolBuilder(tool="consEntropy", base_command=["consEntropy"], inputs=[ToolInput(tag="in_instead_computing_entropy", input_type=String(optional=True), prefix="--H", doc=InputDocumentation(doc="Instead of computing the relative entropy from two .mod files,\njust use the specified value.  The .mod files aren't required\nin this case.")), ToolInput(tag="in_l_minh", input_type=Int(optional=True), prefix="--LminH", doc=InputDocumentation(doc="[or --NH/-N, for backward compatibility]\nReport the expected length that would produce the specified value\nof L_min * H (i.e., the specified PIT), assuming H remains constant\n(it generally won't).  Can be used iteratively to converge on a\ndesired PIT.")), ToolInput(tag="in_target_coverage", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_expected_length", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Consentropy_V0_1_0().translate("wdl", allow_empty_container=True)

