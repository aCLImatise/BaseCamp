from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Components_Repositories_V0_1_0 = CommandToolBuilder(tool="gcloud_components_repositories", base_command=["gcloud", "components", "repositories"], inputs=[ToolInput(tag="in_add", input_type=String(), position=0, doc=InputDocumentation(doc="Add a new Trusted Tester component repository.")), ToolInput(tag="in_list", input_type=String(), position=1, doc=InputDocumentation(doc="List any Trusted Tester component repositories you have registered.")), ToolInput(tag="in_remove", input_type=String(), position=2, doc=InputDocumentation(doc="Remove a registered Trusted Test component repository."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Components_Repositories_V0_1_0().translate("wdl", allow_empty_container=True)

