from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Chakin_Feature_Get_Feature_Cvterms_V0_1_0 = CommandToolBuilder(tool="chakin_feature_get_feature_cvterms", base_command=["chakin", "feature", "get_feature_cvterms"], inputs=[ToolInput(tag="in_feature_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Feature_Get_Feature_Cvterms_V0_1_0().translate("wdl")

