from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Metawatt_V0_1_0 = CommandToolBuilder(tool="metawatt", base_command=["metawatt"], inputs=[ToolInput(tag="in_temp_folder", input_type=Boolean(optional=True), prefix="--temp-folder", doc=InputDocumentation(doc="[temp folder used]")), ToolInput(tag="in_cov_rel_weight", input_type=Boolean(optional=True), prefix="--cov-rel-weight", doc=InputDocumentation(doc="[relative weight of differential coverage scores versus tetranucleotide scores]")), ToolInput(tag="in_skip_database_update", input_type=Boolean(optional=True), prefix="--skip-database-update", doc=InputDocumentation(doc="(do not update databases)")), ToolInput(tag="in_check_dependencies", input_type=Boolean(optional=True), prefix="--check-dependencies", doc=InputDocumentation(doc="(check dependencies and exit)")), ToolInput(tag="in_jar", input_type=Int(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metawatt_V0_1_0().translate("wdl", allow_empty_container=True)

