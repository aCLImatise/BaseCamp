from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Synapse_Get_V0_1_0 = CommandToolBuilder(tool="synapse_get", base_command=["synapse", "get"], inputs=[ToolInput(tag="in_query", input_type=String(optional=True), prefix="--query", doc=InputDocumentation(doc="Optional query parameter, will fetch all of the\nentities returned by a query (see query for help).")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="Fetches content in Synapse recursively contained in\nthe parentId specified by id.")), ToolInput(tag="in_follow_link", input_type=Boolean(optional=True), prefix="--followLink", doc=InputDocumentation(doc="Determines whether the link returns the target Entity.")), ToolInput(tag="in_limit_search", input_type=File(optional=True), prefix="--limitSearch", doc=InputDocumentation(doc="Synapse ID of a container such as project or folder to\nlimit search for files if using a path.")), ToolInput(tag="in_download_location", input_type=File(optional=True), prefix="--downloadLocation", doc=InputDocumentation(doc="Directory to download file to [default: ./].")), ToolInput(tag="in_multithreaded", input_type=Boolean(optional=True), prefix="--multiThreaded", doc=InputDocumentation(doc="Download file using a multiple threaded\nimplementation. This flag will be removed in the\nfuture when multi-threaded download is deemed fully\nstable and becomes the default implementation.\n")), ToolInput(tag="in_v", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_syn_one_two_three", input_type=Int(), position=0, doc=InputDocumentation(doc="Synapse ID of form syn123 of desired data object."))], outputs=[], container="quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synapse_Get_V0_1_0().translate("wdl")

