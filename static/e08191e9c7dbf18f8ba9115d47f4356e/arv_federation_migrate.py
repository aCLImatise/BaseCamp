from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Arv_Federation_Migrate_V0_1_0 = CommandToolBuilder(tool="arv_federation_migrate", base_command=["arv-federation-migrate"], inputs=[ToolInput(tag="in_tokens", input_type=File(optional=True), prefix="--tokens", doc=InputDocumentation(doc="Generate report .csv file listing users by email address\nand their associated Arvados accounts")), ToolInput(tag="in_migrate", input_type=String(optional=True), prefix="--migrate", doc=InputDocumentation(doc="Consume report .csv and migrate users to designated\nArvados accounts")), ToolInput(tag="in_dry_run", input_type=String(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Consume report .csv and report how user would be migrated\nto designated Arvados accounts")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="Check that tokens are usable and the federation is well\nconnected\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arv_Federation_Migrate_V0_1_0().translate("wdl", allow_empty_container=True)

