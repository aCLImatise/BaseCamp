from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Cargo_Publish_V0_1_0 = CommandToolBuilder(tool="cargo_publish", base_command=["cargo", "publish"], inputs=[ToolInput(tag="in_host", input_type=String(optional=True), prefix="--host", doc=InputDocumentation(doc="Host to upload the package to")), ToolInput(tag="in_token", input_type=String(optional=True), prefix="--token", doc=InputDocumentation(doc="Token to use when uploading")), ToolInput(tag="in_no_verify", input_type=Boolean(optional=True), prefix="--no-verify", doc=InputDocumentation(doc="Don't verify package tarball before publish")), ToolInput(tag="in_allow_dirty", input_type=Boolean(optional=True), prefix="--allow-dirty", doc=InputDocumentation(doc="Allow publishing with a dirty source directory")), ToolInput(tag="in_manifest_path", input_type=File(optional=True), prefix="--manifest-path", doc=InputDocumentation(doc="Path to the manifest of the package to publish")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="Number of parallel jobs, defaults to # of CPUs")), ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Perform all checks without uploading")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="...        Use verbose output")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="No output printed to stdout")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Coloring: auto, always, never")), ToolInput(tag="in_frozen", input_type=Boolean(optional=True), prefix="--frozen", doc=InputDocumentation(doc="Require Cargo.lock and cache are up to date")), ToolInput(tag="in_locked", input_type=Boolean(optional=True), prefix="--locked", doc=InputDocumentation(doc="Require Cargo.lock is up to date")), ToolInput(tag="in_cargo", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cargo_Publish_V0_1_0().translate("wdl", allow_empty_container=True)

