from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Jemalloc_Config_V0_1_0 = CommandToolBuilder(tool="jemalloc_config", base_command=["jemalloc-config"], inputs=[ToolInput(tag="in_revision", input_type=Boolean(optional=True), prefix="--revision", doc=InputDocumentation(doc=": Print shared library revision number.")), ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="--config", doc=InputDocumentation(doc=": Print configure options used to build jemalloc.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc=": Print installation directory prefix.")), ToolInput(tag="in_bindir", input_type=Boolean(optional=True), prefix="--bindir", doc=InputDocumentation(doc=": Print binary installation directory.")), ToolInput(tag="in_datadir", input_type=Boolean(optional=True), prefix="--datadir", doc=InputDocumentation(doc=": Print data installation directory.")), ToolInput(tag="in_includedir", input_type=Boolean(optional=True), prefix="--includedir", doc=InputDocumentation(doc=": Print include installation directory.")), ToolInput(tag="in_libdir", input_type=Boolean(optional=True), prefix="--libdir", doc=InputDocumentation(doc=": Print library installation directory.")), ToolInput(tag="in_mandir", input_type=Boolean(optional=True), prefix="--mandir", doc=InputDocumentation(doc=": Print manual page installation directory.")), ToolInput(tag="in_cc", input_type=Boolean(optional=True), prefix="--cc", doc=InputDocumentation(doc=": Print compiler used to build jemalloc.")), ToolInput(tag="in_cflags", input_type=Boolean(optional=True), prefix="--cflags", doc=InputDocumentation(doc=": Print compiler flags used to build jemalloc.")), ToolInput(tag="in_cppflags", input_type=Boolean(optional=True), prefix="--cppflags", doc=InputDocumentation(doc=": Print preprocessor flags used to build jemalloc.")), ToolInput(tag="in_ldflags", input_type=Boolean(optional=True), prefix="--ldflags", doc=InputDocumentation(doc=": Print library flags used to build jemalloc.")), ToolInput(tag="in_libs", input_type=Boolean(optional=True), prefix="--libs", doc=InputDocumentation(doc=": Print libraries jemalloc was linked against."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jemalloc_Config_V0_1_0().translate("wdl", allow_empty_container=True)

