from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Orthomclinstallschema_V0_1_0 = CommandToolBuilder(tool="orthomclInstallSchema", base_command=["orthomclInstallSchema"], inputs=[ToolInput(tag="in_config_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sql_log_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_table_suffix", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orthomclinstallschema_V0_1_0().translate("wdl", allow_empty_container=True)

