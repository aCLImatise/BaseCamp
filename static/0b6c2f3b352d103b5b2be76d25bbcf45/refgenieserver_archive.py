from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Refgenieserver_Archive_V0_1_0 = CommandToolBuilder(tool="refgenieserver_archive", base_command=["refgenieserver", "archive"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="A path to the refgenie config file (YAML). If not\nprovided, the first available environment variable\namong: 'REFGENIE' will be used if set. Currently: not\nset")), ToolInput(tag="in_dbg", input_type=Boolean(optional=True), prefix="--dbg", doc=InputDocumentation(doc="Set logger verbosity to debug")), ToolInput(tag="in_genomes_desc", input_type=File(optional=True), prefix="--genomes-desc", doc=InputDocumentation(doc="Path to a CSV file with genomes descriptions. Format:\ngenome_name, genome description")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="whether the server file tree should be rebuilt even if")), ToolInput(tag="in_asset_registry_paths", input_type=String(), position=0, doc=InputDocumentation(doc="One or more registry path strings that identify\nassets, e.g. hg38/fasta:tag")), ToolInput(tag="in_exists", input_type=String(), position=0, doc=InputDocumentation(doc="-r, --remove          Remove selected genome, genome/asset or"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenieserver_Archive_V0_1_0().translate("wdl", allow_empty_container=True)

