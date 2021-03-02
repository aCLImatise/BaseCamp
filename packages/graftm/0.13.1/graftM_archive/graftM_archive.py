from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Graftm_Archive_V0_1_0 = CommandToolBuilder(tool="graftM_archive", base_command=["graftM", "archive"], inputs=[ToolInput(tag="in_create", input_type=Boolean(optional=True), prefix="--create", doc=InputDocumentation(doc="Create a new GraftM package archive")), ToolInput(tag="in_extract", input_type=Boolean(optional=True), prefix="--extract", doc=InputDocumentation(doc="Extract a archived GraftM package into a regular one")), ToolInput(tag="in_graft_m_package", input_type=File(optional=True), prefix="--graftm_package", doc=InputDocumentation(doc="Path to a GraftM package to inspect. GraftM will decorate the rooted tree within using the taxonomy within.")), ToolInput(tag="in_archive", input_type=File(optional=True), prefix="--archive", doc=InputDocumentation(doc="Path to archived GraftM package, canonically ending in '.gpkg.tar.gz'")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Force overwrite the output archive/gpkg, even if one already exists with the same name")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="1 - 5, 1 being silent, 5 being noisy indeed. Default = 4 (default: 4)")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Output logging information to file"))], outputs=[ToolOutput(tag="out_log", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log", type_hint=File()), doc=OutputDocumentation(doc="Output logging information to file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graftm_Archive_V0_1_0().translate("wdl", allow_empty_container=True)

