from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Cargo_Init_V0_1_0 = CommandToolBuilder(tool="cargo_init", base_command=["cargo", "init"], inputs=[ToolInput(tag="in_vcs", input_type=String(optional=True), prefix="--vcs", doc=InputDocumentation(doc="Initialize a new repository for the given version\ncontrol system (git or hg) or do not initialize any version\ncontrol at all (none) overriding a global configuration.")), ToolInput(tag="in_bin", input_type=Boolean(optional=True), prefix="--bin", doc=InputDocumentation(doc="Use a binary (application) template")), ToolInput(tag="in_lib", input_type=Boolean(optional=True), prefix="--lib", doc=InputDocumentation(doc="Use a library template")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Set the resulting package name")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="...   Use verbose output")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="No output printed to stdout")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Coloring: auto, always, never")), ToolInput(tag="in_frozen", input_type=Boolean(optional=True), prefix="--frozen", doc=InputDocumentation(doc="Require Cargo.lock and cache are up to date")), ToolInput(tag="in_locked", input_type=Boolean(optional=True), prefix="--locked", doc=InputDocumentation(doc="Require Cargo.lock is up to date"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cargo_Init_V0_1_0().translate("wdl", allow_empty_container=True)

