from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dep_Ensure_V0_1_0 = CommandToolBuilder(tool="dep_ensure", base_command=["dep", "ensure"], inputs=[ToolInput(tag="in_add", input_type=Boolean(optional=True), prefix="-add", doc=InputDocumentation(doc="add new dependencies, or populate Gopkg.toml with constraints for existing dependencies (default: false)")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="-dry-run", doc=InputDocumentation(doc="only report the changes that would be made (default: false)")), ToolInput(tag="in_examples", input_type=Boolean(optional=True), prefix="-examples", doc=InputDocumentation(doc="print detailed usage examples (default: false)")), ToolInput(tag="in_no_vendor", input_type=Boolean(optional=True), prefix="-no-vendor", doc=InputDocumentation(doc="update Gopkg.lock (if needed), but do not update vendor/ (default: false)")), ToolInput(tag="in_update", input_type=Boolean(optional=True), prefix="-update", doc=InputDocumentation(doc="update the named dependencies (or all, if none are named) in Gopkg.lock to the latest allowed by Gopkg.toml (default: false)")), ToolInput(tag="in_enable_verbose_default", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="enable verbose logging (default: false)")), ToolInput(tag="in_vendor_only", input_type=Boolean(optional=True), prefix="-vendor-only", doc=InputDocumentation(doc="populate vendor/ from Gopkg.lock without updating it first (default: false)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dep_Ensure_V0_1_0().translate("wdl", allow_empty_container=True)

