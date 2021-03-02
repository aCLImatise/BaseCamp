from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Singularity_Cache_Clean_V0_1_0 = CommandToolBuilder(tool="singularity_cache_clean", base_command=["singularity", "cache", "clean"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="specify a container cache to clean (will clear all\ncache with the same name)")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="operate in dry run mode and do not actually clean\nthe cache")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="suppress any prompts and clean the cache")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="a list of cache types to clean (possible values:\nlibrary, oci, shub, blob, net, oras, all) (default\n[all])")), ToolInput(tag="in_clean", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singularity_Cache_Clean_V0_1_0().translate("wdl", allow_empty_container=True)

