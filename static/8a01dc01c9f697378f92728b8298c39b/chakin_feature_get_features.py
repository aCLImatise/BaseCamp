from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Chakin_Feature_Get_Features_V0_1_0 = CommandToolBuilder(tool="chakin_feature_get_features", base_command=["chakin", "feature", "get_features"], inputs=[ToolInput(tag="in_organism_id", input_type=Int(optional=True), prefix="--organism_id", doc=InputDocumentation(doc="organism_id filter")), ToolInput(tag="in_analysis_id", input_type=Int(optional=True), prefix="--analysis_id", doc=InputDocumentation(doc="analysis_id filter")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="name filter")), ToolInput(tag="in_unique_name", input_type=String(optional=True), prefix="--uniquename", doc=InputDocumentation(doc="uniquename filter"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Feature_Get_Features_V0_1_0().translate("wdl", allow_empty_container=True)

