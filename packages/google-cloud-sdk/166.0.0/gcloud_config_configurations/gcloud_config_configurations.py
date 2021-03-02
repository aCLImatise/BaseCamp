from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Config_Configurations_V0_1_0 = CommandToolBuilder(tool="gcloud_config_configurations", base_command=["gcloud", "config", "configurations"], inputs=[ToolInput(tag="in_configurations", input_type=String(), position=0, doc=InputDocumentation(doc="SYNOPSIS")), ToolInput(tag="in_activate", input_type=String(), position=0, doc=InputDocumentation(doc="Activates an existing named configuration.")), ToolInput(tag="in_create", input_type=String(), position=1, doc=InputDocumentation(doc="Creates a new named configuration.")), ToolInput(tag="in_delete", input_type=String(), position=2, doc=InputDocumentation(doc="Deletes a named configuration.")), ToolInput(tag="in_describe", input_type=String(), position=3, doc=InputDocumentation(doc="Describes a named configuration by listing its properties.")), ToolInput(tag="in_list", input_type=String(), position=4, doc=InputDocumentation(doc="Lists existing named configurations."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Config_Configurations_V0_1_0().translate("wdl", allow_empty_container=True)

