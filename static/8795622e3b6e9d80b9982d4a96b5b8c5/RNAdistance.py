from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rnadistance_V0_1_0 = CommandToolBuilder(tool="RNAdistance", base_command=["RNAdistance"], inputs=[ToolInput(tag="in_detailed_help", input_type=Boolean(optional=True), prefix="--detailed-help", doc=InputDocumentation(doc="Print help, including all details and hidden\noptions, and exit")), ToolInput(tag="in_distance", input_type=String(optional=True), prefix="--distance", doc=InputDocumentation(doc="Specify the distance representation to be used\nin calculations.\n(default=`f')")), ToolInput(tag="in_compare", input_type=String(optional=True), prefix="--compare", doc=InputDocumentation(doc="|m|f|c         Specify the comparison directive.\n(default=`p')")), ToolInput(tag="in_shapiro", input_type=Boolean(optional=True), prefix="--shapiro", doc=InputDocumentation(doc="Use the Bruce Shapiro's cost matrix for\ncomparing coarse structures.\n(default=off)")), ToolInput(tag="in_backtrack", input_type=Boolean(optional=True), prefix="--backtrack", doc=InputDocumentation(doc="[=<filename>]  Print an 'alignment' with gaps of the\nstructures, to show matching substructures.\nThe aligned structures are written to\n<filename>, if specified.\n(default=`none')"))], outputs=[], container="quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnadistance_V0_1_0().translate("wdl")

