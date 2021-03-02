from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Chakin_Feature_Load_Featureprops_V0_1_0 = CommandToolBuilder(tool="chakin_feature_load_featureprops", base_command=["chakin", "feature", "load_featureprops"], inputs=[ToolInput(tag="in_feature_type", input_type=String(optional=True), prefix="--feature_type", doc=InputDocumentation(doc="Type of the target features in sequence ontology (will\nspeed up loading if specified)")), ToolInput(tag="in_match_on_name", input_type=Boolean(optional=True), prefix="--match_on_name", doc=InputDocumentation(doc="Match features using their name instead of their")), ToolInput(tag="in_unique_name", input_type=String(), position=0, doc=InputDocumentation(doc="-h, --help           Show this message and exit."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Feature_Load_Featureprops_V0_1_0().translate("wdl", allow_empty_container=True)

