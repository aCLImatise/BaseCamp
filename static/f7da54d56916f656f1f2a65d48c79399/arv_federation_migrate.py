from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Arv_Federation_Migrate_V0_1_0 = CommandToolBuilder(tool="arv_federation_migrate", base_command=["arv-federation-migrate"], inputs=[ToolInput(tag="in_tokens", input_type=File(optional=True), prefix="--tokens", doc=InputDocumentation(doc="Read tokens from FILE. Not needed when using")), ToolInput(tag="in_migrate", input_type=File(optional=True), prefix="--migrate", doc=InputDocumentation(doc="Consume report .csv and migrate users to designated\nArvados accounts.")), ToolInput(tag="in_dry_run", input_type=File(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Consume report .csv and report how user would be\nmigrated to designated Arvados accounts.")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="Check that tokens are usable and the federation is\nwell connected.\n")), ToolInput(tag="in_login_cluster_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--data-into-subproject")), ToolInput(tag="in_account_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--report FILE         Generate report .csv file listing users by email"))], outputs=[], container="quay.io/biocontainers/arvados-python-client:2.1.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arv_Federation_Migrate_V0_1_0().translate("wdl")

