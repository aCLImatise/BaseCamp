from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Monop_V0_1_0 = CommandToolBuilder(tool="monop", base_command=["monop"], inputs=[ToolInput(tag="in_declared_only", input_type=Boolean(optional=True), prefix="--declared-only", doc=InputDocumentation(doc="Only show members declared in the Type")), ToolInput(tag="in_filter_obsolete", input_type=Boolean(optional=True), prefix="--filter-obsolete", doc=InputDocumentation(doc="Do not show obsolete types and members")), ToolInput(tag="in_private", input_type=Boolean(optional=True), prefix="--private", doc=InputDocumentation(doc="Show private members")), ToolInput(tag="in_refs", input_type=Boolean(optional=True), prefix="--refs", doc=InputDocumentation(doc="Print a list of the referenced assemblies for an assembly")), ToolInput(tag="in_runtime_version", input_type=Boolean(optional=True), prefix="--runtime-version", doc=InputDocumentation(doc="Print runtime version")), ToolInput(tag="in_search", input_type=Boolean(optional=True), prefix="--search", doc=InputDocumentation(doc="Search through all known namespaces")), ToolInput(tag="in_xi", input_type=Boolean(optional=True), prefix="--xi", doc=InputDocumentation(doc="Set search style to Xamarin.iOS")), ToolInput(tag="in_x_a", input_type=Boolean(optional=True), prefix="--xa", doc=InputDocumentation(doc="Set search style to Xamarin.Android")), ToolInput(tag="in_shows_types_declare", input_type=Boolean(optional=True), prefix="--a", doc=InputDocumentation(doc="Shows all the types declare in the specified assembly"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Monop_V0_1_0().translate("wdl", allow_empty_container=True)

