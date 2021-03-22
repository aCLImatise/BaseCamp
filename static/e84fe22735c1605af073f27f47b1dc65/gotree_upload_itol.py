from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Gotree_Upload_Itol_V0_1_0 = CommandToolBuilder(tool="gotree_upload_itol", base_command=["gotree", "upload", "itol"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="iTOL tree name prefix (default 'tree')")), ToolInput(tag="in_project", input_type=String(optional=True), prefix="--project", doc=InputDocumentation(doc="iTOL project to upload the tree")), ToolInput(tag="in_user_id", input_type=String(optional=True), prefix="--user-id", doc=InputDocumentation(doc="iTOL User upload id")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="Input tree format (newick, nexus, or phyloxml) (default 'newick')")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input tree (default 'stdin')")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads (Max=2) (default 1)"))], outputs=[], container="quay.io/biocontainers/gotree:0.4.1--h375a9b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gotree_Upload_Itol_V0_1_0().translate("wdl")

