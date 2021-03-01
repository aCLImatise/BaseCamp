from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Cargo_Clean_V0_1_0 = CommandToolBuilder(tool="cargo_clean", base_command=["cargo", "clean"], inputs=[ToolInput(tag="in_package", input_type=String(optional=True), prefix="--package", doc=InputDocumentation(doc="to clean artifacts for")), ToolInput(tag="in_manifest_path", input_type=File(optional=True), prefix="--manifest-path", doc=InputDocumentation(doc="Path to the manifest to the package to clean")), ToolInput(tag="in_target", input_type=String(optional=True), prefix="--target", doc=InputDocumentation(doc="Target triple to clean output for (default all)")), ToolInput(tag="in_release", input_type=Boolean(optional=True), prefix="--release", doc=InputDocumentation(doc="Whether or not to clean release artifacts")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="...            Use verbose output")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="No output printed to stdout")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Coloring: auto, always, never")), ToolInput(tag="in_frozen", input_type=Boolean(optional=True), prefix="--frozen", doc=InputDocumentation(doc="Require Cargo.lock and cache are up to date")), ToolInput(tag="in_locked", input_type=Boolean(optional=True), prefix="--locked", doc=InputDocumentation(doc="Require Cargo.lock is up to date")), ToolInput(tag="in_cargo", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cargo_Clean_V0_1_0().translate("wdl", allow_empty_container=True)

