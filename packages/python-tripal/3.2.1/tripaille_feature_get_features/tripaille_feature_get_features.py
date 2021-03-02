from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Tripaille_Feature_Get_Features_V0_1_0 = CommandToolBuilder(tool="tripaille_feature_get_features", base_command=["tripaille", "feature", "get_features"], inputs=[ToolInput(tag="in_feature_id", input_type=Int(optional=True), prefix="--feature_id", doc=InputDocumentation(doc="A feature entity/node ID"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Feature_Get_Features_V0_1_0().translate("wdl", allow_empty_container=True)

