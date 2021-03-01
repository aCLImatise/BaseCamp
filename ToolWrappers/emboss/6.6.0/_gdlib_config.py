from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

_Gdlib_Config_V0_1_0 = CommandToolBuilder(tool="_gdlib_config", base_command=["_gdlib-config"], inputs=[ToolInput(tag="in_libdir", input_type=Boolean(optional=True), prefix="--libdir", doc=InputDocumentation(doc="# directory where GD library is installed")), ToolInput(tag="in_includedir", input_type=Boolean(optional=True), prefix="--includedir", doc=InputDocumentation(doc="# directory where GD library headers are installed")), ToolInput(tag="in_major_version", input_type=Boolean(optional=True), prefix="--majorversion", doc=InputDocumentation(doc="# GD library major version number")), ToolInput(tag="in_minor_version", input_type=Boolean(optional=True), prefix="--minorversion", doc=InputDocumentation(doc="# GD library minor version number")), ToolInput(tag="in_revision", input_type=Boolean(optional=True), prefix="--revision", doc=InputDocumentation(doc="# GD library revision version number")), ToolInput(tag="in_ldflags", input_type=Boolean(optional=True), prefix="--ldflags", doc=InputDocumentation(doc="# options required for linking against GD library")), ToolInput(tag="in_libs", input_type=Boolean(optional=True), prefix="--libs", doc=InputDocumentation(doc="# libs required for linking against GD library")), ToolInput(tag="in_cflags", input_type=Boolean(optional=True), prefix="--cflags", doc=InputDocumentation(doc="# options required for compiling GD library apps")), ToolInput(tag="in_includes", input_type=Boolean(optional=True), prefix="--includes", doc=InputDocumentation(doc="# same as --cflags")), ToolInput(tag="in_features", input_type=Boolean(optional=True), prefix="--features", doc=InputDocumentation(doc="# lists features compiled into gd, separated by spaces.\n# Currently (as of 2.2.5) the optional features\n# are GD_PNG, GD_JPEG, GD_XPM, GD_FREETYPE, and\n# GD_FONTCONFIG. When these features are reported by\n# --features, it is safe to include calls to the\n# related functions in your code.")), ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="# print a summary of all GD library configure options")), ToolInput(tag="in_gd_lib_config", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Gdlib_Config_V0_1_0().translate("wdl", allow_empty_container=True)

