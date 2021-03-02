from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Oc_Util_Update_Result_V0_1_0 = CommandToolBuilder(tool="oc_util_update_result", base_command=["oc", "util", "update-result"], inputs=[ToolInput(tag="in_recursive_operation", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="recursive operation")), ToolInput(tag="in_backup_original_copy", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="backup original copy with .bak extension")), ToolInput(tag="in_db_path", input_type=String(), position=0, doc=InputDocumentation(doc="path to a result db file or a directory"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oc_Util_Update_Result_V0_1_0().translate("wdl")

