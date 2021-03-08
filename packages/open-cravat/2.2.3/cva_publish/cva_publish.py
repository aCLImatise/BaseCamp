from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cva_Publish_V0_1_0 = CommandToolBuilder(tool="cva_publish", base_command=["cva", "publish"], inputs=[ToolInput(tag="in_data", input_type=Boolean(optional=True), prefix="--data", doc=InputDocumentation(doc="publishes module with data.")), ToolInput(tag="in_code", input_type=Boolean(optional=True), prefix="--code", doc=InputDocumentation(doc="publishes module without data.")), ToolInput(tag="in_user", input_type=String(optional=True), prefix="--user", doc=InputDocumentation(doc="user to publish as. Typically your email.")), ToolInput(tag="in_password", input_type=String(optional=True), prefix="--password", doc=InputDocumentation(doc="password for the user. Enter at prompt if missing.")), ToolInput(tag="in_force_yes", input_type=Boolean(optional=True), prefix="--force-yes", doc=InputDocumentation(doc="overrides yes to overwrite question")), ToolInput(tag="in_overwrite", input_type=Boolean(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="overwrites a published module/version"))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cva_Publish_V0_1_0().translate("wdl")

